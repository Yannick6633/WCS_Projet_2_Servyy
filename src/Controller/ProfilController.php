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
        if (!isset($_SESSION['email'])) {
            header('Location: /Login/index');
            exit;
        }
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
