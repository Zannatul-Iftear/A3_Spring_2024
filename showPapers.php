<?php

?>



<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700,900|Ubuntu:400,500,700" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link id="stylesheet" rel="stylesheet" href="styleMain.css">
        <title>Show Papers</title>
    </head>


    <body>
        <?php
            $conn = mysqli_connect('localhost','root','','testdb') or die('connection failed');
            $sql = "SELECT paperID, paperLevel, paperYear, paperSubject, paperBoard FROM `papers`";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $paperID = $row["paperID"];
                    $level = $row["paperLevel"];
                    $year = $row["paperYear"];
                    $subject = $row["paperSubject"];
                    $board = $row["paperBoard"];

                    echo '<h3>Paper ID: '.$paperID.'</h3>';
                    echo '<h2>'.$board.' '.$year.'</h2>';
                    echo '<h2>Subject: '.$subject.'</h2>';
                    echo '<h2>Level: '.$level.'</h2>';
                    echo '<p>--------------------------------------------</p>';
                }
            } else {
                echo "No products found.";
            }
            $conn->close();
        ?>
        <a href="index.php">Back</a>
    </body>
</html>
