<?php
    $subject='';
    if (isset($_GET['subject'])) {
        $subject = htmlspecialchars($_GET['subject'], ENT_QUOTES, 'UTF-8');
    }
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
        <script type="text/javascript" async="" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-MML-AM_CHTML"></script>
        
        <?php
            if($subject=="physics"){ echo "<title>Physics Past Papers</title>";}
            else{ echo "<title>Higher Mathematics Past Papers</title>"; }
        ?>
        <link id="stylesheet" rel="stylesheet" href="stylePPList.css">
    </head>


    <body>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <?php @include("navbar.php") ?>

        <div class="myContainer">
      
            <!-------------- Write Code Here: -------------->
      
            <div id="bannerContainer">
              <img src="img/bannerIMG2.png">
              <?php
                    if($subject=="physics"){ echo "<p>Physics Past Papers</p>";}
                    else{ echo "<p>Higher Mathematics Past Papers</p>"; }
                ?>
            </div>
      
            <div class="row" id="myRow" >
                <div class="col-md-8 mx-auto">
                    <div id="papersContainer">
                        <?php
                            $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');

                            if($subject=="physics"){
                                $sql = "SELECT paperID, paperYear, paperBoard 
                                FROM `papers` 
                                WHERE paperSubject='Physics'
                                ORDER BY paperYear DESC";
                                $result = $conn->query($sql);
    
                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        $paperID = $row["paperID"];
                                        $paperYear = $row["paperYear"];
                                        $paperBoard = $row["paperBoard"];
    
                                        echo '<a href="pastPaperMAIN.php?paperID='.$paperID.'" class="paperLink">SSC Physics '.$paperYear.' - '.$paperBoard.'</a>';
                                    }
                                } else {
                                    echo "No products found.";
                                }
                            }
                            else{
                                $sql = "SELECT paperID, paperYear, paperBoard 
                                FROM `papers` 
                                WHERE paperSubject='Higher Mathematics'
                                ORDER BY paperYear DESC";
                                $result = $conn->query($sql);
    
                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        $paperID = $row["paperID"];
                                        $paperYear = $row["paperYear"];
                                        $paperBoard = $row["paperBoard"];
    
                                        echo '<a href="pastPaperMAIN.php?paperID='.$paperID.'" class="paperLink">SSC Higher Mathematics '.$paperYear.' - '.$paperBoard.'</a>';
                                    }
                                } else {
                                    echo "No products found.";
                                }
                            }
                            $conn->close();
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <?php @include("footer.php") ?>
    </body>
</html>
<script src="navbar.js"></script>