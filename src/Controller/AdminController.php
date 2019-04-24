<?php


namespace App\Controller;

use App\Model\ServiceManager;
use App\Model\UserManager;
use App\Upload\UploadFile;

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

    public function delete(int $id)
    {
        $serviceManager = new serviceManager();
        $serviceManager->delete($id);
        header('Location:/Admin/services');
    }

    public function add()
    {
        $serviceManager = new serviceManager();
        $uploadManager = new UploadFile();
        if (isset($_POST['addService'])) {
            if (!empty($_POST['addService'])) {
                if (!empty($_FILES['picture']['name'][0] != '') && !empty($_POST['label'])) {
                    $data = htmlspecialchars(trim($_POST['label']));

                    $fileName = $uploadManager->upload('picture', 'picture', 'assets/images/skill/');
                    $serviceManager->insert($data, $fileName);
                }
            }
        }
    }

    public function modifyServices($id)
    {
        $errors = [];
        $success = [];
        $serviceManager = new ServiceManager();
        $uploadManager = new UploadFile();
        if (isset($_POST['modifyService'])) {
            if (empty($_POST['label'])) {
                $errors[] = 'Veuillez remplir tout les champs';
            }
            if (count($errors) == 0 && isset($_POST['label'])) {
                $label = htmlspecialchars(trim($_POST['label']));
                $serviceManager->update($label, 'label', $id);
                $success [] = 'Nom bien modifié !';
            }
            if (!empty($_FILES['picture']['name'][0] != '')) {
                $fileName = $uploadManager->upload('picture', 'picture', 'assets/images/skill/');
                $serviceManager->update($fileName, 'picture', $id);
                $succes [] = 'Image bien modifié !';
            }
        }
        $service = $serviceManager->selectOneById($id);

        return $this->twig->render('Admin/modifyServices.html.twig', [
            'success'=>$success,
            'errors' => $errors,
            'service' => $service
        ]);
    }
}
