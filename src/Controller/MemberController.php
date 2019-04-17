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


        return $this->twig->render('Member/member.html.twig', ['services'=>$services,]);
    }
}
