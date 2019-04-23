<?php


namespace App\Controller;

use App\Model\ServiceManager;
use App\Model\UserManager;

class AdminController extends AbstractController
{
    public function index()
    {
        $userManager = new UserManager();
        $users = $userManager->selectAll();
        return $this->twig->render('Admin/index.html.twig', ['users'=> $users]);
    }

    public function services()
    {
        $serviceManager = new ServiceManager();
        $services = $serviceManager->selectAll();
        return $this->twig->render('Admin/services.html.twig', ['services'=> $services]);
    }
}
