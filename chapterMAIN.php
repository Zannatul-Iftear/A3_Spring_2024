<?php
    $subject='';
    if (isset($_GET['subjectName'])) {
        $subject = htmlspecialchars($_GET['subjectName'], ENT_QUOTES, 'UTF-8');
    }
    $bookLink='';
    $bookName='';
    if($subject=="Physics"){
        $bookLink="https://infoworld247.files.wordpress.com/2018/08/secondary-2018-class-9-10-physics-full-opt.pdf";
        $bookName="SSC Physics";
    }
    else if($subject=="Higher Mathematics"){
        $bookLink="https://bangladeshresults.files.wordpress.com/2013/03/9-10-25_higher-math-eng.pdf";
        $bookName="SSC Higher Mathematics";
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
        
        <?php echo '<title>'.$subject.' Syllabus</title>'; ?>
        <link id="stylesheet" rel="stylesheet" href="styleChapter.css">
        
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
              <?php echo '<p>'.$subject.' Syllabus</p>'; ?>
            </div>
      
            <div class="row" id="myRow" >
                <div class="col-md-8 mx-auto">
                    <p id="pageTitle">
                        Book PDF: 
                        <?php echo '<a href='.$bookLink.' target="_blank">'.$bookName.'</a>'; ?>
                    </p>

                    <div id="chaptersContainer">
                        <div id="heading">
                            <p id="headingNumber">Chapter</p>
                            <p id="headingName">Title</p>
                            <p id="headingPage">Page No.</p>
                        </div>
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
                                    $chapterPages = $row["chapterPages"];

                                    echo '<div class="chapter">';
                                    echo '<p class="chapterNumber">'.$chapterNumber.'</p>';
                                    echo '<p class="chapterName">'.$chapterName.'</p>';
                                    echo '<p class="chapterPage">'.$chapterPages.'</p>';
                                    echo '</div>';
                                }
                            } else {
                                echo "No products found.";
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