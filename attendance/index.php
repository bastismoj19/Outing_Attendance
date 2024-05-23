<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bulma.css">
    <script src="jquery.js"></script>
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        body {
            background: url('beach.jpg') no-repeat;
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

    </script>
</body>
</html>