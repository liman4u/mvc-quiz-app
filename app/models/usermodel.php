<?php

/**
 * Class UserModel
 */
class UserModel
{
    /**
     * Every model needs a database connection, passed to the model
     * @param object $db A PDO database connection
     */
    function __construct($db)
    {
        try {
            $this->db = $db;
        } catch (PDOException $e) {
            exit('Database connection could not be established.');
        }
    }



    /**
     * Add a user to database
     * @param string $name Name
     */
    public function addUser($name)
    {
        //Clean the input from javascript code
        $name = strip_tags($name);

        //Check a likewise name exists in database
        $sql = "SELECT id FROM users WHERE name = :name";
        $query = $this->db->prepare($sql);
        $query->execute(array(':name' => $name));

        //Check row count
        if ($query->rowCount() > 0) {
            $user_id = $query->fetch()->id;
        }else{
            $sql = "INSERT INTO users (name) VALUES (:name)";
            $query = $this->db->prepare($sql);
            $query->execute(array(':name' => $name));
            $user_id = $this->db->lastInsertId();
        }

        return $user_id;


    }


}
