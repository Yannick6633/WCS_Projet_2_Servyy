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
}
