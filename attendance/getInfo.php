<?php
    include "database.php";
    $dbHandler = new mySQLDB();

    $sql_query_display = "SELECT * FROM infosave";
    $result = $dbHandler->getData($sql_query_display);

    echo "<link rel='stylesheet' href='bulma.css'>";
    echo "<div class='box m-1'>";
    echo "<table class = 'table is-fullwidth is-striped'><tr><td><h1>Present&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</h1></td><td><h1>Date Logged in</h1></td></tr></table>";
    echo "<table class = 'table is-fullwidth is-striped'>";
        foreach($result as $data) {
            echo "<tr>";
            echo "<td>".$data->emp_name."<td>";
            echo "<td>&nbsp&nbsp&nbsp&nbsp&nbsp".$data->logtime."<td>";
            echo "</tr>";
        }
    echo "</table>";
    echo "</div>";
        
    
    
    
?>