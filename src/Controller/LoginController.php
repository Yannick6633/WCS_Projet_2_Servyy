<?php


namespace App\Controller;

use App\Model\UserManager;

class LoginController extends AbstractController
{

    /**
     * Display login page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function index()
    {
        if (isset($_SESSION['email'])) {
            header('Location: /Home/index');
            exit;
        }
        $errors = [];
        if (isset($_POST['submit'])) {
            $userManager = new UserManager();
            $userExist = $userManager->selectEmail($_POST['email']);
            if (!isset($userExist[0]['email'])) {
                $errors['notMember'] = 'l\'email renseigné ne correspond à aucun utilisateur, veuillez vous inscrire';
            }
            if (!isset($userExist[0]['password']) || $userExist[0]['password'] != sha1($_POST['password'])) {
                $errors['password'] = 'Mot de passe incorrect';
            }
            if (count($errors) == 0) {
                $_SESSION['id'] = $userExist[0]['id'];
                $_SESSION['firstname'] = $userExist[0]['firstname'];
                $_SESSION['lastname'] = $userExist[0]['lastname'];
                $_SESSION['email'] = $userExist[0]['email'];
                $_SESSION['status'] = $userExist[0]['status'];
                header('Location: /home/index');
                exit;
            }
        }
        return $this->twig->render('Login/login.html.twig', ['post'=>$_POST,'errors'=> $errors]);
    }


    public function logout():void
    {
        session_unset();
        session_destroy();
        header('location: /Home/index');
    }
}
