<?php


namespace App\Security;

class Authentication
{
    protected $authenticator;

    public function checkLogged()
    {
        if (!isset($_SESSION['email'])) {
            header('Location: /Login/index');
            exit;
        }
    }
}
