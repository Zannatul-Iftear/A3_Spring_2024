<?php
session_start();

$paperID=$_SESSION['addPaperID'];
$subject=$_SESSION['addPaperSubject'];

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["submit"])) {

    function postQuestion($type, $x_set, $x_text, $x_img, $x_chapter, $paperID, $subject){
        $link = mysqli_connect("localhost","root","","help_db");
  
        if($link === false){
            die("ERROR: Could not connect." . mysqli_connect_error());
        }
    
        $marks="";
        if($type=="Creative"){
            if($subject=="Physics"){$marks="(1+2+3+4) = 10 Marks";}
            else{$marks="(2+4+4) = 10 Marks";}
        }
        else $marks="1 Mark";    
    
        if($type=="Creative") {$set=$_POST[$x_set]; }
        else {$set="null"; }
        $text=$_POST[$x_text];
        if($_POST[$x_img] !== ""){$img=$_POST[$x_img];}
        else {$img="none";}
        $chapterID=0;
    
        sscanf($_POST[$x_chapter], "%d", $chapterNumber);
        $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
        $sql = "SELECT chapterID 
        FROM `chapters` 
        WHERE chapterSubject='$subject' 
        AND chapterNumber='$chapterNumber'";
        $result = $conn->query($sql);
    
        if ($result && $result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $chapterID = $row['chapterID'];
        } else {
            echo "No products found.";
        }
        $conn->close();
      
        $sql = "INSERT INTO questions 
        (questionType,questionMarks,questionSet,questionText,questionImg,paperID,chapterID)
        VALUES ('$type','$marks','$set','$text','$img','$paperID','$chapterID')";

        if(mysqli_query($link,$sql)){
        } else {
            echo "ERROR: Could not be able to execute $sql." . mysqli_error($link);
        }
        mysqli_close($link);
    }
    if($_POST['c1_text'] !== ""){postQuestion('Creative', 'c1_set', 'c1_text', 'c1_img', 'c1_chapter', $paperID, $subject);}
    if($_POST['c2_text'] !== ""){postQuestion('Creative', 'c2_set', 'c2_text', 'c2_img', 'c2_chapter', $paperID, $subject);}
    if($_POST['c3_text'] !== ""){postQuestion('Creative', 'c3_set', 'c3_text', 'c3_img', 'c3_chapter', $paperID, $subject);}
    if($_POST['c4_text'] !== ""){postQuestion('Creative', 'c4_set', 'c4_text', 'c4_img', 'c4_chapter', $paperID, $subject);}
    if($_POST['c5_text'] !== ""){postQuestion('Creative', 'c5_set', 'c5_text', 'c5_img', 'c5_chapter', $paperID, $subject);}
    if($_POST['c6_text'] !== ""){postQuestion('Creative', 'c6_set', 'c6_text', 'c6_img', 'c6_chapter', $paperID, $subject);}
    if($_POST['c7_text'] !== ""){postQuestion('Creative', 'c7_set', 'c7_text', 'c7_img', 'c7_chapter', $paperID, $subject);}
    if($_POST['c8_text'] !== ""){postQuestion('Creative', 'c8_set', 'c8_text', 'c8_img', 'c8_chapter', $paperID, $subject);}

    if($_POST['m1_text'] !== ""){postQuestion('MCQ', '', 'm1_text', 'm1_img', 'm1_chapter', $paperID, $subject);}
    if($_POST['m2_text'] !== ""){postQuestion('MCQ', '', 'm2_text', 'm2_img', 'm2_chapter', $paperID, $subject);}
    if($_POST['m3_text'] !== ""){postQuestion('MCQ', '', 'm3_text', 'm3_img', 'm3_chapter', $paperID, $subject);}
    if($_POST['m4_text'] !== ""){postQuestion('MCQ', '', 'm4_text', 'm4_img', 'm4_chapter', $paperID, $subject);}
    if($_POST['m5_text'] !== ""){postQuestion('MCQ', '', 'm5_text', 'm5_img', 'm5_chapter', $paperID, $subject);}
    if($_POST['m6_text'] !== ""){postQuestion('MCQ', '', 'm6_text', 'm6_img', 'm6_chapter', $paperID, $subject);}
    if($_POST['m7_text'] !== ""){postQuestion('MCQ', '', 'm7_text', 'm7_img', 'm7_chapter', $paperID, $subject);}
    if($_POST['m8_text'] !== ""){postQuestion('MCQ', '', 'm8_text', 'm8_img', 'm8_chapter', $paperID, $subject);}
    if($_POST['m9_text'] !== ""){postQuestion('MCQ', '', 'm9_text', 'm9_img', 'm9_chapter', $paperID, $subject);}
    if($_POST['m10_text'] !== ""){postQuestion('MCQ', '', 'm10_text', 'm10_img', 'm10_chapter', $paperID, $subject);}
    if($_POST['m11_text'] !== ""){postQuestion('MCQ', '', 'm11_text', 'm11_img', 'm11_chapter', $paperID, $subject);}
    if($_POST['m12_text'] !== ""){postQuestion('MCQ', '', 'm12_text', 'm12_img', 'm12_chapter', $paperID, $subject);}
    if($_POST['m13_text'] !== ""){postQuestion('MCQ', '', 'm13_text', 'm13_img', 'm13_chapter', $paperID, $subject);}
    if($_POST['m14_text'] !== ""){postQuestion('MCQ', '', 'm14_text', 'm14_img', 'm14_chapter', $paperID, $subject);}
    if($_POST['m15_text'] !== ""){postQuestion('MCQ', '', 'm15_text', 'm15_img', 'm15_chapter', $paperID, $subject);}
    if($_POST['m16_text'] !== ""){postQuestion('MCQ', '', 'm16_text', 'm16_img', 'm16_chapter', $paperID, $subject);}
    if($_POST['m17_text'] !== ""){postQuestion('MCQ', '', 'm17_text', 'm17_img', 'm17_chapter', $paperID, $subject);}
    if($_POST['m18_text'] !== ""){postQuestion('MCQ', '', 'm18_text', 'm18_img', 'm18_chapter', $paperID, $subject);}
    if($_POST['m19_text'] !== ""){postQuestion('MCQ', '', 'm19_text', 'm19_img', 'm19_chapter', $paperID, $subject);}
    if($_POST['m20_text'] !== ""){postQuestion('MCQ', '', 'm20_text', 'm20_img', 'm20_chapter', $paperID, $subject);}
    if($_POST['m21_text'] !== ""){postQuestion('MCQ', '', 'm21_text', 'm21_img', 'm21_chapter', $paperID, $subject);}
    if($_POST['m22_text'] !== ""){postQuestion('MCQ', '', 'm22_text', 'm22_img', 'm22_chapter', $paperID, $subject);}
    if($_POST['m23_text'] !== ""){postQuestion('MCQ', '', 'm23_text', 'm23_img', 'm23_chapter', $paperID, $subject);}
    if($_POST['m24_text'] !== ""){postQuestion('MCQ', '', 'm24_text', 'm24_img', 'm24_chapter', $paperID, $subject);}
    if($_POST['m25_text'] !== ""){postQuestion('MCQ', '', 'm25_text', 'm25_img', 'm25_chapter', $paperID, $subject);}
    if($_POST['m26_text'] !== ""){postQuestion('MCQ', '', 'm26_text', 'm26_img', 'm26_chapter', $paperID, $subject);}
    if($_POST['m27_text'] !== ""){postQuestion('MCQ', '', 'm27_text', 'm27_img', 'm27_chapter', $paperID, $subject);}
    if($_POST['m28_text'] !== ""){postQuestion('MCQ', '', 'm28_text', 'm28_img', 'm28_chapter', $paperID, $subject);}
    if($_POST['m29_text'] !== ""){postQuestion('MCQ', '', 'm29_text', 'm29_img', 'm29_chapter', $paperID, $subject);}
    if($_POST['m30_text'] !== ""){postQuestion('MCQ', '', 'm30_text', 'm30_img', 'm30_chapter', $paperID, $subject);}
    if($_POST['m31_text'] !== ""){postQuestion('MCQ', '', 'm31_text', 'm31_img', 'm31_chapter', $paperID, $subject);}
    if($_POST['m32_text'] !== ""){postQuestion('MCQ', '', 'm32_text', 'm32_img', 'm32_chapter', $paperID, $subject);}
    if($_POST['m33_text'] !== ""){postQuestion('MCQ', '', 'm33_text', 'm33_img', 'm33_chapter', $paperID, $subject);}
    if($_POST['m34_text'] !== ""){postQuestion('MCQ', '', 'm34_text', 'm34_img', 'm34_chapter', $paperID, $subject);}
    if($_POST['m35_text'] !== ""){postQuestion('MCQ', '', 'm35_text', 'm35_img', 'm35_chapter', $paperID, $subject);}

    header('location:pastPaperSubjects.php');
}
?>

<!DOCTYPE html
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
        
        <title>Add Question Papers</title>
        <link id="stylesheet" rel="stylesheet" href="styleAddQuestion.css">
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
              <p>Add Question Paper</p>
            </div>
      
            <div class="row" id="myRow" >
                <div class="col-md-6 mx-auto">
                    <p id="pageTitle">Question Information</p>
                    <form class="myForm" action="addQuestion.php" method="POST">

                        <!---------------------------- CREATIVE QUESTIONS ---------------------------->
                                
                        <p class='sectionTitle'>Creative Questions</p>

                        <!------------------------------- QUESTION 1 ------------------------------->

                        <p class='questionNumber'>Question 1</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c1_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c1_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c1_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c1_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 2 ------------------------------->

                        <p class='questionNumber'>Question 2</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c2_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c2_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c2_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c2_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 3 ------------------------------->

                        <p class='questionNumber'>Question 3</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c3_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c3_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c3_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c3_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 4 ------------------------------->

                        <p class='questionNumber'>Question 4</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c4_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c4_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c4_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c4_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 5 ------------------------------->

                        <p class='questionNumber'>Question 5</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c5_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c5_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c5_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c5_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 6 ------------------------------->

                        <p class='questionNumber'>Question 6</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c6_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c6_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c6_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c6_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 7 ------------------------------->

                        <p class='questionNumber'>Question 7</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c7_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c7_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c7_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c7_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 8 ------------------------------->

                        <p class='questionNumber'>Question 8</p>

                        <div class="form-group">
                            <label>Set</label>
                            <select class="form-control" name="c8_set">
                                <option>null</option>
                                <option>A: Algebra</option>
                                <option>B: Geometry and Vector</option>
                                <option>C: Trigonometry and Probability</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="c8_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="c8_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="c8_img"
                            value="">
                        </div><br><br>

                        <!------------------------ MULTIPLE CHOICE QUESTIONS ------------------------>
                                
                        <p class='sectionTitle'>Multiple Choice Questions</p>

                        <!------------------------------- QUESTION 1 ------------------------------->

                        <p class='questionNumber'>Question 1</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m1_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m1_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m1_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 2 ------------------------------->

                        <p class='questionNumber'>Question 2</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m2_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m2_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m2_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 3 ------------------------------->

                        <p class='questionNumber'>Question 3</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m3_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m3_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m3_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 4 ------------------------------->

                        <p class='questionNumber'>Question 4</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m4_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m4_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m4_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 5 ------------------------------->

                        <p class='questionNumber'>Question 5</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m5_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m5_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m5_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 6 ------------------------------->

                        <p class='questionNumber'>Question 6</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m6_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m6_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m6_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 7 ------------------------------->

                        <p class='questionNumber'>Question 7</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m7_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m7_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m7_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 8 ------------------------------->

                        <p class='questionNumber'>Question 8</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m8_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m8_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m8_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 9 ------------------------------->

                        <p class='questionNumber'>Question 9</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m9_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m9_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m9_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 10 ------------------------------->

                        <p class='questionNumber'>Question 10</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m10_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m10_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m10_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 11 ------------------------------->

                        <p class='questionNumber'>Question 11</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m11_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m11_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m11_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 12 ------------------------------->

                        <p class='questionNumber'>Question 12</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m12_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m12_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m12_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 13 ------------------------------->

                        <p class='questionNumber'>Question 13</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m13_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m13_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m13_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 14 ------------------------------->

                        <p class='questionNumber'>Question 14</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m14_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m14_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m14_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 15 ------------------------------->

                        <p class='questionNumber'>Question 15</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m15_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m15_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m15_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 16 ------------------------------->

                        <p class='questionNumber'>Question 16</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m16_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m16_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m16_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 17 ------------------------------->

                        <p class='questionNumber'>Question 17</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m17_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m17_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m17_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 18 ------------------------------->

                        <p class='questionNumber'>Question 18</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m18_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m18_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m18_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 19 ------------------------------->

                        <p class='questionNumber'>Question 19</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m19_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m19_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m19_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 20 ------------------------------->

                        <p class='questionNumber'>Question 20</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m20_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m20_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m20_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 21 ------------------------------->

                        <p class='questionNumber'>Question 21</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m21_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m21_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m21_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 22 ------------------------------->

                        <p class='questionNumber'>Question 22</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m22_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m22_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m22_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 23 ------------------------------->

                        <p class='questionNumber'>Question 23</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m23_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m23_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m23_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 24 ------------------------------->

                        <p class='questionNumber'>Question 24</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m24_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m24_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m24_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 25 ------------------------------->

                        <p class='questionNumber'>Question 25</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m25_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m25_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m25_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 26 ------------------------------->

                        <p class='questionNumber'>Question 26</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m26_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m26_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m26_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 27 ------------------------------->

                        <p class='questionNumber'>Question 27</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m27_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m27_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m27_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 28 ------------------------------->

                        <p class='questionNumber'>Question 28</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m28_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m28_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m28_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 29 ------------------------------->

                        <p class='questionNumber'>Question 29</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m29_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m29_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m29_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 30 ------------------------------->

                        <p class='questionNumber'>Question 30</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m30_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m30_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m30_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 31 ------------------------------->

                        <p class='questionNumber'>Question 31</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m31_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m31_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m31_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 32 ------------------------------->

                        <p class='questionNumber'>Question 32</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m32_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m32_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m32_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 33 ------------------------------->

                        <p class='questionNumber'>Question 33</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m33_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m33_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m33_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 34 ------------------------------->

                        <p class='questionNumber'>Question 34</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m34_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m34_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m34_img"
                            value="">
                        </div><br><br>

                        <!------------------------------- QUESTION 35 ------------------------------->

                        <p class='questionNumber'>Question 35</p>

                        <div class="form-group">
                            <label>Chapter</label>
                            <select class="form-control" name="m35_chapter">
                                <?php @include("populateChapters.php") ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea type="text" class="form-control" name="m35_text"
                            placeholder="Enter Question Text" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label>Diagram</label>
                            <input type="text" class="form-control" name="m35_img"
                            value="">
                        </div><br><br>



















                        
                        
                        <div id="buttonContainer">
                            <input type="hidden" name="form_submitted" value="1"/>
                            <input class="myButton" name="submit" type="submit" value="Submit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <?php @include("footer.php") ?>
    </body>
</html>
<script src="navbar.js"></script>


