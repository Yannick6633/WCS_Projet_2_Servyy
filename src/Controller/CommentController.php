<?php
/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;

use App\Model\CommentManager;

/**
 * Class UserController
 *
 */
class CommentController extends AbstractController
{


    /**
     * Display comment listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function index()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            //if (empty($_POST['email'])) {
                //$errors['emailError'] = ' * L\' adresse mail est obligatoire';
            //}

            $commentManager = new CommentManager();
            $comment = [
                'content' => $_POST['content'],
                'rate' => $_POST['rate']
            ];
            $commentManager->insert($_POST);
            header('location: /Service/index');

        }

        return $this->twig->render('Comment/comment.html.twig', ['comment' => $comment, 'post' => $_POST]);
    }


    /**
     * Display comment informations specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function show(int $id)
    {
        $commentManager = new CommentManager();
        $comment = $commentManager->selectOneById($id);

        return $this->twig->render('Comment/show.html.twig', ['comment' => $comment, 'session' => $_SESSION]);
    }


    /**
     * Display comment edition page specified by $id
     *
     * @param int $id
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function edit(int $id): string
    {
        $commentManager = new CommentManager();
        $comment = $commentManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $comment['title'] = $_POST['title'];
            $commentManager->update($comment);
        }

        return $this->twig->render('Comment/edit.html.twig', ['comment' => $comment, 'session' => $_SESSION]);
    }
}
