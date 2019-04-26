<?php
/**
 * Created by PhpStorm.
 * User: adeli
 * Date: 24/04/2019
 * Time: 11:54
 */

namespace App\Model;

class UserServiceManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'user_service';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function insert($service, $user)
    {
        $statement = $this->pdo->prepare("INSERT INTO $this->table 
        (user_id, service_id) 
        VALUES (:user_id, :service_id)");
        $statement->bindValue('user_id', $user['id'], \PDO::PARAM_INT);
        $statement->bindValue('service_id', $service, \PDO::PARAM_STR);

        $statement->execute();
    }


    public function selectAllServicesByUserId(int $id)
    {
        $statement = $this-> pdo->query("SELECT * FROM $this->table 
            JOIN service ON user_service.service_id = service.id WHERE user_id = $id");

        return $statement->fetchAll();
    }



    public function selectById(int $i)
    {
        $statement = $this->pdo->prepare("SELECT service_id FROM $this->table JOIN user ON user_service.user_id=user.id WHERE user_id=:id ");
        $statement->bindValue('id', $i, \PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetchAll();
    }

    public function update(array $userServices)
    {
        $statement = $this->pdo->prepare("UPDATE $this->table 
        SET  
        WHERE id=:id");
        $statement->bindValue('id', $_SESSION['id'], \PDO::PARAM_INT);
        $statement->bindValue('firstname', $user['firstname'], \PDO::PARAM_STR);
        $statement->bindValue('lastname', $user['lastname'], \PDO::PARAM_STR);
        $statement->bindValue('email', $user['email'], \PDO::PARAM_STR);
        $statement->bindValue('phone', $user['phone'], \PDO::PARAM_STR);
        $statement->bindValue('distance', $user['distance'], \PDO::PARAM_STR);

        return $statement->execute();
    }

    public function deleteByUser(int $id): void
    {
        // prepared request
        $statement = $this->pdo->prepare("DELETE FROM $this->table WHERE user_service.user_id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
    }



}
