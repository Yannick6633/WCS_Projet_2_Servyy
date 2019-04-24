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
class ServiceManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'service';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    /**
     * @param string $service
     * @return void
     */
    public function insert(string $service, $image): void
    {
        // prepared request
        $statement = $this->pdo->prepare("INSERT INTO $this->table (label,picture) VALUES (:label, :picture)");
        $statement->bindValue('label', $service, \PDO::PARAM_STR);
        $statement->bindValue('picture', $image, \PDO::PARAM_STR);

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

    public function update($label, $champs, $id)
    {

        // prepared request
        $statement = $this->pdo->prepare("UPDATE $this->table 
        SET $champs = :label WHERE id=:id");
        $statement->bindValue('label', $label, \PDO::PARAM_STR);
        $statement->bindValue('id', $id, \PDO::PARAM_INT);

        return $statement->execute();
    }
}
