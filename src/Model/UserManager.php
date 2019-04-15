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
class UserManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'user';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    /**
     * @param array $user
     * @return int
     */
    public function insert(array $user): int
    {
        // prepared request
        $statement = $this->pdo->prepare("INSERT INTO $this->table (`title`) VALUES (:title)");
        $statement->bindValue('title', $user['title'], \PDO::PARAM_STR);

        if ($statement->execute()) {
            return (int)$this->pdo->lastInsertId();
        }
    }


    /**
     * @param int $id
     */
    public function delete(int $id): void
    {
        // prepared request
        $statement = $this->pdo->prepare("DELETE FROM $this->table WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
    }


    /**
     * @param array $user
     * @return bool
     */
    public function update(array $user): bool
    {

        // prepared request
        $statement = $this->pdo->prepare("UPDATE $this->table SET `title` = :title WHERE id=:id");
        $statement->bindValue('id', $user['id'], \PDO::PARAM_INT);
        $statement->bindValue('title', $user['title'], \PDO::PARAM_STR);

        return $statement->execute();
    }

    /**
     * Get all row from database.
     *
     * @return array
     */
    public function selectService(): array
    {
        return $this->pdo->query('SELECT * FROM user 
    INNER JOIN user_service ON user.id = user_service.user_id 
    INNER JOIN service ON service.id = user_service.service_id')->fetchAll();
    }

    public function selectById(): array
    {
        return $this->pdo->query(' SELECT * FROM ' . $this->table . ' WHERE id=5 ')->fetch();
    }

    public function selectBestRate(): array
    {
        return $this->pdo->query("SELECT service.label, user.id, user.firstname, user.lastname, 
        user.description ,
        CEIL((SUM(comment.rate)/COUNT(comment.rate))) AS moyenne 
        FROM user LEFT JOIN comment ON user.id = comment.provider_id 
        INNER JOIN user_service ON user_service.user_id = user.id 
        INNER JOIN service ON service.id = user_service.service_id
        WHERE user.status = '0' GROUP by user.id ORDER BY moyenne DESC LIMIT 4")->fetchAll();
    }
}
