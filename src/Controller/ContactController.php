<?php

namespace App\Controller;

class ContactController extends AbstractController
{

    /**
     * Display contact page
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */

    public function index()
    {
        $errors = [];

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (empty($_POST['email'])) {
                $errors['emailError'] = ' * L\'adresse mail est obligatoire';
            } elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
                $errors['emailError'] = ' * Adresse mail non valide';
            }

            if(empty($_POST['subject'])){
                $errors['subjectError']=' * Veuillez renseigner le sujet';
            } elseif (!preg_match("/^[a-zA-Z ]*$/",$_POST['subject'])){
                $errors['subjectError']=' * Lettres et espaces autorisés seulement';
            }

            if(empty($_POST['message'])){
                $errors['messageError']=' * Veuillez renseigner le sujet';
            } elseif (!preg_match("/^[a-zA-Z ]*$/",$_POST['message'])){
                $errors['messageError']=' * Lettres et espaces autorisés seulement';
            }

        }

        return $this->twig->render('Contact/contact.html.twig', ['post' => $_POST,
            'errors' => $errors]);
    }
}