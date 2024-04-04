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
        
        <title>H.E.L.P.</title>
        <link id="stylesheet" rel="stylesheet" href="styleHome.css">
    </head>


    <body>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <?php @include("navbar.php") ?>

        <div class="myContainer">
      
            <!-------------- Write Code Here: -------------->
      
            <div id="bannerContainer">
              <img src="img/bannerIMG1.png">
              <p>A cloud based board exam question generator</p>
            </div>
      
            <div class="row" id="myRow" >
                <div class="col-md-8 mx-auto">
                    <p id="introPara">
                        <b>Highly Effective Learning Platform (HELP)</b> is a cloud based board exam question generator. HELP can streamline the process of collecting and accessing previous exam questions, providing students with a comprehensive and efficient platform for their board exam preparation. This not only saves time but also enhances the overall effectiveness of their study routine.
                    </p>

                    <h1 id="getStarted">Get started with HELP:</h1>

                    <div id="linksContainer">
                        <div class="link">
                            <a href="generateSubjects.php" class="linkImg" id="linkImg1"></a>
                            <a href="generateSubjects.php" class="linkText">Generate Question Paper</a>
                        </div>
                        <div class="link">
                            <a href="pastPaperSubjects.php" class="linkImg" id="linkImg2"></a>
                            <a href="pastPaperSubjects.ph" class="linkText">Past Question Papers</a>
                        </div>
                        <div class="link">
                            <a href="chapterSubjects.php" class="linkImg" id="linkImg3"></a>
                            <a href="chapterSubjects.php" class="linkText">Syllabus</a>
                        </div>
                        <div class="link">
                            <a href="addPaper.php" class="linkImg" id="linkImg4"></a>
                            <a href="addPaper.php" class="linkText">Add Question Paper</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php @include("footer.php") ?>
    </body>
</html>
<script src="navbar.js"></script>