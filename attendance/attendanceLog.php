<?php
    include "database.php"; 
    $dbHandler = new mySQLDB();

    if(isset($_POST["emp_id"])) {
        $emp_id = $_POST["emp_id"];

        if((int)checkData($emp_id) == 0) {
            echo json_encode("Employee ID $emp_id is not part of FUNAI.");
        } else {
            if(checkExist($emp_id) == "0") {
                $sql_query_name = "SELECT emp_name FROM listdata WHERE emp_id = '$emp_id'";
                $emp_name = $dbHandler->getOneData($sql_query_name);
                
                $sql_query_insert = "INSERT INTO infosave (emp_id, emp_name, Logtime) VALUES ('$emp_id', '$emp_name', now())";
                $dbHandler->execquery($sql_query_insert);

                echo json_encode("Successfully logged in: $emp_name");
            } else {
                echo "Employee ID $emp_id is already logged in.";
            }
        }
    }

    function checkData($emp_id) {
        $dbHandler = new mySQLDB();
        $sql_query = "SELECT emp_id FROM `listdata` WHERE emp_id = '$emp_id'";
        $result = $dbHandler->getOneData($sql_query);
        return $result;
    }
    
    function checkExist($emp_id) {
        $dbHandler = new mySQLDB();
        $sql_query = "SELECT count(*) as 'count' FROM `infosave` WHERE emp_id = '$emp_id'";
        $result = $dbHandler->getOneData($sql_query);
        return $result;
    }
?>