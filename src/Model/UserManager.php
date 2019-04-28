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


    public function insert(array $user, $city)
    {
        // prepared request
        $statement = $this->pdo->prepare("INSERT INTO $this->table 
        (firstname, lastname, email, phone, visibility, password, description, city_id) 
        VALUES (:firstname, :lastname, :email, :phone, :visibility, :password, :description, :city_id)");
        $statement->bindValue('firstname', $user['firstname'], \PDO::PARAM_STR);
        $statement->bindValue('lastname', $user['lastname'], \PDO::PARAM_STR);
        $statement->bindValue('email', $user['email'], \PDO::PARAM_STR);
        $statement->bindValue('phone', $user['phone'], \PDO::PARAM_STR);
        $statement->bindValue('visibility', $user['visibility'], \PDO::PARAM_STR);
        $statement->bindValue('password', $user['password'], \PDO::PARAM_STR);
        $statement->bindValue('description', $user['description'], \PDO::PARAM_STR);
        $statement->bindValue('city_id', $city, \PDO::PARAM_INT);

        $statement->execute();
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

    public function update($user)
    {
        $statement = $this->pdo->prepare("UPDATE $this->table
        SET  firstname = :firstname, lastname = :lastname, 
        email = :email, phone = :phone, distance = :distance, description = :description
        WHERE id=:id");

        $statement->bindValue('id', $user['id'], \PDO::PARAM_INT);
        $statement->bindValue('firstname', $user['firstname'], \PDO::PARAM_STR);
        $statement->bindValue('lastname', $user['lastname'], \PDO::PARAM_STR);
        $statement->bindValue('email', $user['email'], \PDO::PARAM_STR);
        $statement->bindValue('phone', $user['phone'], \PDO::PARAM_STR);
        $statement->bindValue('distance', $user['distance'], \PDO::PARAM_INT);
        $statement->bindValue('description', trim($user['description']), \PDO::PARAM_STR);

        $statement->execute();

        return $user;
    }

    public function updateFromAdmin($user)
    {
        $statement = $this->pdo->prepare("UPDATE $this->table 
        SET  firstname = :firstname, lastname = :lastname, email = :email, status = :status
        WHERE id=:id");

        $statement->bindValue('id', $user['id'], \PDO::PARAM_INT);
        $statement->bindValue('firstname', $user['firstname'], \PDO::PARAM_STR);
        $statement->bindValue('lastname', $user['lastname'], \PDO::PARAM_STR);
        $statement->bindValue('email', $user['email'], \PDO::PARAM_STR);
        $statement->bindValue('status', $user['status'], \PDO::PARAM_INT);


        $statement->execute();
        return $user;
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

    public function verifyEmail($email)
    {
        $statement = $this->pdo->prepare("SELECT * FROM  $this->table  WHERE email = :email");
        $statement->bindValue('email', $email, \PDO::PARAM_STR);

        $statement->execute();

        return count($statement->fetchAll());
    }

    public function selectBestRate(): array
    {
        $q = "  SELECT  user.id, user.firstname, user.lastname, 
                user.description ,COUNT(comment.id) AS commentsCount,
                CEIL(AVG(comment.rate)) AS average 
                FROM user 
                LEFT JOIN comment ON user.id = comment.provider_id 
                WHERE user.status = '0' 
                GROUP by user.id ORDER BY average DESC LIMIT 4";

        return $this->pdo->query($q)->fetchAll();
    }

    public function selectRateUserById($id)
    {
        $q = "  SELECT COUNT(comment.id) AS commentsCount,
                CEIL(AVG(comment.rate)) AS average 
                FROM user 
                LEFT JOIN comment ON user.id = comment.provider_id 
                WHERE user.id = $id ";

        return $this->pdo->query($q)->fetchAll();
    }

    public function selectUsersOrderedByRate($id): array
    {
        $sql = "SELECT service.label, user.id, user.firstname, user.lastname, 
        user.description ,COUNT(comment.id) AS commentsCount,
        CEIL(AVG(comment.rate)) AS average 
        FROM user 
        LEFT JOIN comment ON user.id = comment.provider_id 
        INNER JOIN user_service ON user_service.user_id = user.id 
        INNER JOIN service ON service.id = user_service.service_id
        WHERE user.status = '0' ";

        if ($id > 0) {
            $sql .= "AND user_service.service_id=$id ";
        }

        $sql .= "GROUP by user.id ORDER BY average DESC";

        return $this->pdo->query($sql)->fetchAll();
    }


    public function selectEmail($email): array
    {
        $statement = $this->pdo->prepare("SELECT * FROM $this->table WHERE email =:email");
        $statement->bindValue(':email', $email, \PDO::PARAM_STR);

        $statement->execute();
        return $statement->fetchAll();
    }
}
