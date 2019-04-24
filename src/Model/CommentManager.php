<?php
/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 * PHP version 7
 */

namespace App\Model;

/**
 *
 */
class CommentManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'comment';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    /**
     * @param array $comment
     * @return int
     */
   // public function insert(array $comment)
    //{
        // prepared request
        //$statement = $this->pdo->prepare("INSERT INTO comment (content) VALUES (:content)");
        //$statement->bindValue(':content', $comment['content'], \PDO::PARAM_STR);

        //return $statement->execute();
    //}

    /**
     * @param array $comment
     * @return bool
     */
    public function insert(array $comment)
    {
    // prepared request

    $statement = $this->pdo->prepare("INSERT INTO comment (rate, content) VALUES (:rate, :content)");
    $statement->bindValue(':rate', $comment['rate'], \PDO::PARAM_INT);
    $statement->bindValue(':content', $comment['content'], \PDO::PARAM_STR);

    return $statement->execute();
    }

}


