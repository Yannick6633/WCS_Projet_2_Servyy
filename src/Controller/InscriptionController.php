<?php
/**
 * Created by PhpStorm.
 * User: adeli
 * Date: 16/04/2019
 * Time: 14:41
 */

namespace App\Controller;

use App\Model\CityManager;
use App\Model\ServiceManager;
use App\Model\UserManager;
use App\Model\UserServiceManager;

class InscriptionController extends AbstractController
{
    public function register()
    {
        $errors = [];
        $valide = '';

        if ($_SERVER['REQUEST_METHOD'] == "POST") { // = if (!empty($_POST)) en bcp plus propre
            if (empty($_POST['firstname']) || !isset($_POST['firstname'])) {
                $errors['firstname'] = 'Entrez votre prénom';
            }
            if (empty($_POST['lastname']) || !isset($_POST['lastname'])) {
                $errors['lastname'] = 'N\'oubliez pas votre nom';
            }
            if (empty($_POST['email']) || !isset($_POST['email'])) {
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
            if (empty($_POST['zipcode']) || !isset($_POST['zipcode'])) {
                $errors['zipcode'] = 'Veuillez renseigner votre code postal';
            }
            $cityManager = new CityManager();
            $city = $cityManager->verifyCity($_POST['zipcode']);
            if (count($city) == 0) {
                $errors['zipcode2'] = 'Veuillez renseigner un code postal valide';
            }

            if (empty($_POST['password']) || !isset($_POST['password'])) {
                $errors['password'] = 'Le mot de passe est obligatoire';
            }
            if (isset($_POST['password'])) {
                $_POST['password'] = sha1($_POST['password']);
            }
            if (empty($errors)) {
                $valide = 'Votre inscription a été validé';
            }
        }

        if (empty($errors) && !empty($_POST)) {
            $this->insertMember($_POST);
        }

        if (empty($errors) && !empty($_POST['services'])) {
            $userManager = new UserManager();
            $lastUser = $userManager->selectLastId();
            $this->insertServices($_POST['services'], $lastUser);
        }

        $servicesManager = new ServiceManager();
        $services = $servicesManager->selectAll();

        return $this->twig->render('Inscription/register.html.twig', [
            'errors' => $errors,
            'services' => $services,
            'post' => $_POST, 'valide' => $valide]);
    }

    public function insertMember(array $value)
    {
        $cityManager = new CityManager();
        $city = $cityManager->verifyCity($value['zipcode']);

        $id_city = $city[0]['id'];

        $newMemberManager = new UserManager();
        if (!isset($value['visibility'])) {
            $value['visibility'] = '0';
        }
        $newMemberManager->insert($value, $id_city);
    }

    public function insertServices($services, $user)
    {
        $servicesManager = new UserServiceManager();
        foreach ($services as $service => $value) {
            $servicesManager->insert($value, $user);
        }
    }
}
