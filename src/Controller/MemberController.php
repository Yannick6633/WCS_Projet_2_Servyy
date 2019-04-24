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

class MemberController extends AbstractController
{
    public function index()
    {
        $serviceManager = new ServiceManager();
        $services = $serviceManager->selectAll();


        $userManager = new UserManager();
        $user = $userManager->selectOneById($_SESSION['id']);
        $user['password'] = sha1($user['password']);


        return $this->twig->render('Member/member.html.twig', ['services' => $services, 'user' => $user]);
    }

    public function delete(int $id)
    {
        $userManager = new UserManager();
        $userManager->delete($id);
        header("Location:/");
    }
}
