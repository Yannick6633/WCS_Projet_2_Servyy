<?php
/**
 * Created by PhpStorm.
 * User: aurelwcs
 * Date: 08/04/19
 * Time: 18:40
 */

namespace App\Controller;

use App\Model\UserManager;

class ProfilController extends AbstractController
{

    /**
     * Display home page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function index()
    {
        $userManager = new UserManager();
        $user = $userManager->selectById();

        return $this->twig->render('Profil/profil.html.twig', ['user' => $user]);
    }


    public function show()
    {
        $userManager = new UserManager();
        $user = $userManager->selectAll();
        $errors = [];
        return $this->twig->render('Profil/profil.html.twig', ['users' => $user,
            'errors' => $errors]);
    }
}
