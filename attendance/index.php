<?php
    // Creates database automatically 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "loginattendance";

    // Create connection
    $conn = new mysqli($servername, $username, $password);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Read SQL file
    $sql = file_get_contents('loginattendance.sql');

    // Execute SQL script
    if ($conn->multi_query($sql)) {
        do {
            // Store first result set
            if ($result = $conn->store_result()) {
                $result->free();
            }
        } while ($conn->more_results() && $conn->next_result());
    }

    $conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bulma.css">
    <link rel="icon" href="funai.png" type="image/png">
    <script src="jquery.js"></script>
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        body {
            background: url('funai.jpg') no-repeat;
            background-size: cover;
            background-position: center;
            display: flex;
            height: 100vh;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .div {
            box-shadow: 10px 10px 2px rgb(39, 64, 58);
        }
    </style>

</head>
<body>
    <div class="columns is-vcentered container">
        <div class="box m-5 div has-background-primary-light">
            <table>
                <tr>
                    <td><label class="label mt-2">Employee ID &nbsp</label></td>
                    <td><input style="background-color: transparent;" type="text" class="input scannerInput is-success" autofocus></td>
                </tr>
            </table>
        </div>
    </div>

    <script>
        $(function() {
            $(".scannerInput").keydown(function(e) {
                
                if(e.which == 13) {
                    
                    var scannerInput = $(".scannerInput").val();
                    
                    $.ajax({
                        url: "attendanceLog.php",
                        data: {
                            emp_id: scannerInput
                        },
                        datatype: "json",
                        method: "post",
                        success: function(data_from_other_page){
                            alert(data_from_other_page);
                            location.reload();
                        }
                    });
                }
            });
        });

        <td><input style="background-color: transparent;" type="text" id="scannerInput" id="scannerInput" class="input scannerInput is-success" autofocus></td>
                </tr>
            </table>
        </div>
    </div>

    <script>
        $(function() {
            $(".scannerInput").keydown(function(e) {
                
                if(e.which == 13) {
                    
                    var scannerInput = $(".scannerInput").val();
                    
                    $.ajax({
                        url: "attendanceLog.php",
                        data: {
                            emp_id: scannerInput
                        },
                        datatype: "json",
                        method: "post",
                        success: function(data_from_other_page){
                            alert(data_from_other_page);
                            location.reload();
                        }
                    });
                }
            });
        });

        document.addEventListener("click", function(event) {
            const firstNameInput = document.getElementById("scannerInput");
            
            // Check if the clicked element is NOT the first name input
            if (event.target !== firstNameInput) {
                firstNameInput.focus(); // Refocus on the input field
            }
        });

    </script>
</body>
</html>
