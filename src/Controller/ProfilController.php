<?php
/**
 * Created by PhpStorm.
 * User: aurelwcs
 * Date: 08/04/19
 * Time: 18:40
 */

namespace App\Controller;

use App\Model\CityManager;

use App\Model\CommentManager;
use App\Model\UserManager;
use App\Model\UserServiceManager;

/**
 * Class ProfilController
 * @package App\Controller
 */
class ProfilController extends AbstractController
{

    /**
     * @param int $id
     * @return string
     * @throws \Twig_Error_Loader
     * @throws \Twig_Error_Runtime
     * @throws \Twig_Error_Syntax
     */
    public function index(int $id) :string
    {
        $this->authenticator->isAuthorized();

        $userServiceManager = new UserServiceManager();
        $services = $userServiceManager->selectAllServicesByUserId($id);
        $userManager = new UserManager();
        $user = $userManager->selectOneById($id);
        $rate = $userManager->selectRateUserById($id);
        $user['average'] = (int)$rate[0]['average'];
        $user['commentsCount'] = (int)$rate[0]['commentsCount'];

        $city = null;
        if (!empty($user['city_id'])) {
            $cityManager = new CityManager();
            $city = $cityManager->selectOneById($user['city_id']);
        }

        $commentManager = new CommentManager();
        $comments = $commentManager->selectAllCommentByIdWithNameAuthor($id);

        return $this->twig->render('Profil/profil.html.twig', [
            'user' => $user,
            'services' => $services,
            'city' => $city,
            'comments' => $comments,
        ]);
    }
}
