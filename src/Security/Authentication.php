<?php


namespace App\Security;

class Authentication
{
    public function isLogged()
    {
        if (isset($_SESSION['email'])) {
            header('Location: /Home/index');
            exit;
        }
    }

    public function isAuthorized()
    {
        if (!isset($_SESSION['email'])) {
            header('Location: /Login/index');
            exit;
        }
    }
}
