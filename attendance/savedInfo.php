<?php
    include "database.php";
    $dbHandler = new mySQLDB();

    $sql_query_display = "select * from listdata where emp_id not in ( SELECT `emp_id` FROM infosave)";
    $result = $dbHandler->getData($sql_query_display);
    
    echo "<td><h1>List of Employees</h1></td>";

    echo "<table>";
    foreach($result as $data) {
        echo "<tr>";
        echo "<td>".$data->emp_name."<td>";
        echo "</tr>";
    }
    echo "</table>";
    //select * from datalist where emp_id not in ( SELECT `emp_id` FROM saveinfo);
?>