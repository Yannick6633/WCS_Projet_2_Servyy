<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;

use App\Model\ServiceManager;
use App\Model\UserManager;

/**
 * Class ItemController
 *
 */
class ServiceController extends AbstractController
{


    /**
     * Display item listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function index(int $id = 0)
    {
        $userManager = new UserManager();
        $users = $userManager->selectUsersOrderedByRate($id);

        $serviceManager = new ServiceManager();
        $services = $serviceManager->selectAll();


        return $this->twig->render('Service/service.html.twig', ['users' => $users,
            'services' => $services]);
    }
}
