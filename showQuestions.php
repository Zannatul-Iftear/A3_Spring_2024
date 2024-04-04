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
        <title>Show Questions</title>
    </head>


    <body>
        <?php
            $conn = mysqli_connect('localhost','root','','testdb') or die('connection failed');
            $sql = "SELECT questionID,questionType,questionMarks,questionSet,questionText,questionImg,paperID,chapterID FROM `questions`";
            $result = $conn->query($sql);
            $counter = 0;

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $questionID=$row["questionID"];
                    $type=$row["questionType"];
                    $marks=$row["questionMarks"];
                    $set=$row["questionSet"];
                    $text=$row["questionText"];
                    $img=$row["questionImg"];
                    $paperID=$row["paperID"];
                    $chapterID=$row["chapterID"];
                    $counter=$counter+1;

                    echo '<h>'.$counter.'</h>';
                    echo '<h3>Question ID: '.$questionID.'</h3>';
                    echo '<h2>'.$type.' '.$marks.'</h2>';
                    echo '<h2>Set: '.$set.'</h2>';
                    echo '<h2>Paper ID: '.$paperID.'</h2>';
                    echo '<h2>Chapter ID: '.$chapterID.'</h2>';
                    echo '<img src="diagrams/'.$img.'">';
                    echo '<p>'.$text.'</p>';
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
