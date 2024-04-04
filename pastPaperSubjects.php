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
        
        <title>Past Question Papers</title>
        <link id="stylesheet" rel="stylesheet" href="styleSubjectList.css">
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
              <p>Past Question Papers</p>
            </div>
      
            <div class="row" id="myRow" >
                <div class="col-md-8 mx-auto">
                    <p id="pageTitle">
                        Choose a subject to view its past question papers:
                    </p>

                    <div id="subjectsContainer">
                        <a href="pastPaperList.php?subject=hmath" class="subject" id="higherMath">Higher Mathematics</a>
                        <a href="pastPaperList.php?subject=physics" class="subject" id="physics">Physics</a>
                        <span class="subject">Chemistry</span>
                        <span class="subject">Biology</span>
                        <span class="subject">Mathematics</span>
                        <span class="subject">Bangla</span>
                        <span class="subject">English</span>
                        <span class="subject">Religion</span>
                        <span class="subject">ICT</span>
                        <span class="subject">Accounting</span>
                        <span class="subject">Finance</span>
                        <span class="subject">Business</span>
                    </div>
                </div>
            </div>
        </div>
                





        <?php @include("footer.php") ?>
    </body>
</html>
<script src="navbar.js"></script>