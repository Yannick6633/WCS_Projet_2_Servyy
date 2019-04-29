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
    public function insert(array $comment, $idProvider, $idAuthor)
    {
    // prepared request

        $statement = $this->pdo->prepare("
            INSERT INTO comment (rate, content, author_id, provider_id) 
            VALUES (:rate, :content, :idAuthor, :idProvider)");
        $statement->bindValue(':rate', $comment['rate'], \PDO::PARAM_INT);
        $statement->bindValue(':content', $comment['content'], \PDO::PARAM_STR);
        $statement->bindValue(':idProvider', $idProvider, \PDO::PARAM_INT);
        $statement->bindValue(':idAuthor', $idAuthor, \PDO::PARAM_INT);

        return $statement->execute();
    }

    public function selectAllCommentByIdWithNameAuthor($id): array
    {
        $statement = $this->pdo->query("SELECT * FROM comment ​
        INNER JOIN user ON user.id = author_id WHERE provider_id = $id
        ORDER BY rate DESC");

        return $statement->fetchAll();
    }
}
