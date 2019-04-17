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
        $succesMessage = '';
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (empty($_POST['email'])) {
                $errors['emailError'] = ' * L\'adresse mail est obligatoire';
            } elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
                $errors['emailError'] = ' * Adresse mail non valide';
            }

            if (empty($_POST['subject'])) {
                $errors['subjectError'] = ' * Veuillez renseigner le sujet';
            } elseif (!preg_match("/^[a-zA-Z ]*$/", $_POST['subject'])) {
                $errors['subjectError'] = ' * Lettres et espaces autorisés seulement';
            }

            if (empty($_POST['message'])) {
                $errors['messageError'] = ' * Veuillez renseigner le sujet';
            } elseif (!preg_match("/^[a-zA-Z ]*$/", $_POST['message'])) {
                $errors['messageError'] = ' * Lettres et espaces autorisés seulement';
            }
            if (empty($errors)) {
                $post=[];
                foreach ($_POST as $key => $data) {
                    $post[$key] = htmlspecialchars($data);
                }

                $succesMessage = 'Votre message a bien été envoyé';

                $destinataire = CONTACT_EMAIL;
                $sujet = $post['subject'];
                $email = $post['email'];
                $message = $post['message'];
                $content = '<html><head><title>Titre du message</title></head><body>';
                $content .= '<p>Bonjour, vous avez reçu un message à partir de votre site web.</p>';
                $content.= '<p><strong>Sujet</strong>: ' . $sujet . '</p>';
                $content .= '<p><strong>Email</strong>: ' . $email . '</p>';
                $content .= '<p><strong>Message</strong>: ' .$message. '</p>';
                $content .= '</body></html>';

                @mail($destinataire, $sujet, $content);
            }
        } //ENDIF

        return $this->twig->render('Contact/contact.html.twig', ['post' => $_POST,
            'errors' => $errors,
            'succes' => $succesMessage
        ]);

    }
}
