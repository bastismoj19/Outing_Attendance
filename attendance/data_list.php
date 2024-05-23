<?php
    include "database.php";
    $dbHandler = new mySQLDB();

    if(isset($_POST["emp_id"])) {
        $emp_id = $_POST["emp_id"];
    }

    if(checkExist($emp_id) == "0"){
        $sql_query = "
                INSERT INTO `login`(`emp_id`)
                VALUES 
                ('$emp_id')
            ";
        $dbHandler->execquery($sql_query);
    } else {
        echo "$emp_id ALREADY LOGGED";
        
    }

    function checkExist($emp_id) {

        $dbHandler = new mySQLDB();

        $sql_query = "SELECT count(*) as 'count' FROM `saveinfo`  where emp_id = '$emp_id'";

        $result = $dbHandler->getOneData($sql_query);

        return $result;
    }

    function checkID($emp_id) {
        
        $dbHandler = new mySQLDB();

        $sql_query = "SELECT count(*) as 'count' from `saveinfo` where emp_id = '$emp_id'";
        
        $result = $dbHandler->getOneData($sql_query);

        return $result;  
    }
    
?>