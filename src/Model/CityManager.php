<?php
/**
 * Created by PhpStorm.
 * User: adeli
 * Date: 17/04/2019
 * Time: 17:45
 */

namespace App\Model;


class CityManager extends AbstractManager
{
    const TABLE = 'city';

    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    public function verifyCity(string $zipcode)
    {
        $statement = $this->pdo->prepare("SELECT id FROM  $this->table WHERE zip_name = :zipcode");
        $statement->bindValue(':zipcode', $zipcode, \PDO::PARAM_STR);

        $statement->execute();

        return $statement->fetchAll();
    }

}
