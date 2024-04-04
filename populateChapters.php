<?php
    $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
    $sql = "SELECT chapterNumber, chapterName, chapterPages 
    FROM `chapters` 
    WHERE chapterSubject='$subject'
    ORDER BY chapterNumber ASC";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $chapterNumber = $row["chapterNumber"];
            $chapterName = $row["chapterName"];
            echo '<option>'.$chapterNumber.' - '.$chapterName.'</option>';
        }
    } else {
        echo "No products found.";
    }
    $conn->close();
?>