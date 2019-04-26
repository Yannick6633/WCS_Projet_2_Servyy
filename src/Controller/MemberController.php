<?php
/**
 * Created by PhpStorm.
 * User: laure
 * Date: 2019-04-16
 * Time: 15:49
 */

namespace App\Controller;

use App\Model\ServiceManager;
use App\Model\UserManager;
use App\Model\UserServiceManager;

class MemberController extends AbstractController
{
    public function index()
    {
        $serviceManager = new ServiceManager();
        $services = $serviceManager->selectAll();

        $userManager = new UserManager();
        $user = $userManager->selectOneById($_SESSION['id']);
        $user['password'] = sha1($user['password']);


        $userServicesManager = new UserServiceManager();
        $userServices = $userServicesManager->selectById($_SESSION['id']);
        $servicesByUser = [];
        foreach ($userServices as $userService => $services_id) {
            foreach ($services_id as $service_id) {
                $servicesByUser[] = $serviceManager->selectOneById($service_id);
            }
        }


        return $this->twig->render('Member/member.html.twig', ['services' => $services,
            'user' => $user,
            'post' => $_POST,
            'userServices' => $servicesByUser]);
    }

    public function delete(int $id)
    {
        $userManager = new UserManager();
        $userManager->delete($id);
        header("Location:/");
    }

    public function updateUsers(int $id)
    {

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $_POST['id'] = $_SESSION['id'];
            $userManager = new UserManager();
            $userManager->update($_POST);
        }
        header("Location:/member/profile");
    }

    public function updateServices(int $id)
    {

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $UserServiceManager = new UserServiceManager();
            $UserServiceManager->deleteByUser($_SESSION['id']);


            $insertservice = new UserServiceManager();
            foreach ($_POST['service'] as $service => $serviceId) {
                $insertservice->insert($serviceId, $_SESSION);
            }
        }
        header("Location:/Member/profile");
    }
}
