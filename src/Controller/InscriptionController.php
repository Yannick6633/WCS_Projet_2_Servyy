<?php
/**
 * Created by PhpStorm.
 * User: adeli
 * Date: 16/04/2019
 * Time: 14:41
 */

namespace App\Controller;


use App\Model\UserManager;

class InscriptionController extends AbstractController
{
    public function register()
    {
        $errors = [];
        $valide = '';

        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            if (empty($_POST['firstname'])) {
                $errors['firstname'] = 'Entrez votre prénom';
            }
            if (empty($_POST['lastname'])) {
                $errors['lastname'] = 'N\'oubliez pas votre nom';
            }
            if (empty($_POST['email'])) {
                $errors['email'] = 'L\'adresse email est obligatoire';
            }
            if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
                $errors['email2'] = 'Votre email n\'est pas valide';
            }
            $useManager = new UserManager();
            $result = $useManager->verifyEmail($_POST['email']);
            if ($result === 1) {
                $errors['email3'] = 'Vous êtes déjà enregistré';
            }
            if (empty($_POST['password'])) {
                $errors['password'] = 'Le mot de passe est obligatoire';
            }
            if (isset($_POST['password'])) {
                $_POST['password'] = sha1($_POST['password']);
            }
            if (empty($errors)) {
                $valide = 'Votre inscription a été validé';
            }
        }

        return $this->twig->render('Inscription/register.html.twig', ['errors' => $errors,
            'post' => $_POST, 'valide' => $valide]);
    }
}
