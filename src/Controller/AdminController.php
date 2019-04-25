<?php


namespace App\Controller;

use App\Model\ServiceManager;
use App\Model\UserManager;

class AdminController extends AbstractController
{
    public function index()
    {
        $userManager = new UserManager();
        $users = $userManager->selectAll();
        return $this->twig->render('Admin/index.html.twig', ['users' => $users]);
    }

    public function services()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $this->add();
        }
        $serviceManager = new ServiceManager();
        $services = $serviceManager->selectAll();
        return $this->twig->render('Admin/services.html.twig', ['services' => $services]);
    }

    public function deleteService(int $id)
    {
        $serviceManager = new serviceManager();
        $serviceManager->delete($id);
        header('Location:/Admin/services');
    }

    public function deleteUser(int $id)
    {
        $userManager = new UserManager();
        $userManager->delete($id);
        header('Location:/Admin/index');
    }

    public function modifyUser($userId)
    {
        $userManager = new UserManager();
        // "Ancien" utilisateur
        $user = $userManager->selectOneById($userId);
        $valide2 = '';

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // met à jour avec les données issues du post
            $user = $userManager->updateFromAdmin($_POST);
            $valide2 = 'L\'utilisateur a bien été mis à jour';
        }

        return $this->twig->render('Admin/modifyUser.html.twig', ['user' => $user, 'valide2' => $valide2]);
    }

    public function add()
    {
        $serviceManager = new serviceManager();
        if (isset($_POST['addService'])) {
            $uploadDir = 'assets/images/skill/';

            $fileUploadErrors = [
                0 => "Aucune erreur, OK",
                1 => "La taille du picture téléchargé excède la valeur 
                de upload_max_filesize, configurée dans le php.ini",
                2 => "La taille du picture téléchargé excède la valeur de max",
                3 => "Le picture n'a été que partiellement téléchargé.",
                4 => "Aucun picture n'a été téléchargé.",
                6 => "Un dossier temporaire est manquant.",
                7 => "Échec de l'écriture du picture sur le disque.",
                8 => "Une extension PHP a arrêté l'envoi de picture. 
                PHP ne propose aucun moyen de déterminer quelle extension est en cause. ",
            ];

            $valideExtensions = [
                'png',
                'jpe',
                'jpeg',
                'jpg',
                'gif',
                'bmp',
                'ico',
                'tiff',
                'tif',
                'svg',
                'svgz',
                'jfif'
            ];

            if (!empty($_POST['addService'])) {
                if (!empty($_FILES['picture']['name'][0] != '') && !empty($_POST['label'])) {
                    $data = htmlspecialchars(trim($_POST['label']));

                    $tmpUploadFile = $_FILES['picture']['tmp_name'][0];
                    $fileExtension = strtolower(strrchr($_FILES['picture']['name'][0], '.'));

                    if (!in_array(substr($fileExtension, 1), $valideExtensions)) {
                        $errors[] = "L'extention <b>($fileExtension)</b> du fichier <b>"
                            . $_FILES['picture']['name'][0] . "</b> n'est pas valide !";
                    }

                    if ($tmpUploadFile != "" and empty($errors)) {
                        $serviceManager->insert($data);
                        $lastId = $serviceManager->selectLastId();
                        $savedNames[] = $_FILES['picture']['name'][0];
                        $uploadFile = $uploadDir . $lastId['id'] . '.jpg';
                        var_dump($savedNames);
                        var_dump($uploadFile);
                        if (move_uploaded_file($tmpUploadFile, $uploadFile)) {
                            $newFiles[] = basename($uploadFile);
                            $msgValidations[] = "L'image <b>" . $savedNames[0] . "</b> à bien été envoyée.<br/>";
                        }
                    }
                    if ($_FILES['picture']['error'][0] > 0) {
                        $errors[] = "Erreur lors du transfert de " .
                            $_FILES['picture']['name'][0] . ".<br/>" .
                            $fileUploadErrors[$_FILES['picture']['error'][0]] . ".";
                    }
                } else {
                    $errors[] = 'Rentrez un service ET une image';
                }
            }
        }
    }
}
