<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["submit"])) {
    $level='SSC';
    $year=$_POST['year'];
    $subject=$_POST['subject'];
    $board=$_POST['board'];
    $marks=$_POST['marks'];
    $time=$_POST['time'];
    $note=$_POST['note'];
  
    $link = mysqli_connect("localhost","root","","help_db");
  
    if($link === false){
        die("ERROR: Could not connect." . mysqli_connect_error());
    }
  
    $sql = "INSERT INTO papers 
    (paperLevel,paperYear,paperSubject,paperBoard,paperMarks,paperTime,paperNote)
    VALUES ('$level','$year','$subject','$board','$marks','$time','$note')";
  
    if(mysqli_query($link,$sql)){
        $_SESSION['addPaperID'] = mysqli_insert_id($link);
        $_SESSION['addPaperSubject'] = $subject;
        header('location:addQuestion.php');
    } else {
        echo "ERROR: Could not be able to execute $sql." . mysqli_error($link);
    }
  
    mysqli_close($link);
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
        
        <title>Add Question Papers</title>
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
                    <p id="pageTitle">Paper Information</p>
                            
                    <form class="myForm" action="addPaper.php" method="POST">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-6 pr-0">
                                    <label>Level</label>
                                    <select class="form-control">
                                        <option>SSC</option>
                                        <option>HSC</option>
                                    </select>
                                </div>
                                <div class="col-6 pl-0">
                                    <label>Year</label>
                                    <input type="number" class="form-control" name="year">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Subject</label>
                            <select class="form-control" name="subject">
                                <option>Physics</option>
                                <option>Higher Mathematics</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Origin</label>
                            <select class="form-control" name="board">
                                <option>Model Question</option>
                                <option>Dhaka Board</option>
                                <option>Rajshahi Board</option>
                                <option>Comilla Board</option>
                                <option>Jessore Board</option>
                                <option>Chittagong Board</option>
                                <option>Barisal Board</option>
                                <option>Sylhet Board</option>
                                <option>Dinajpur Board</option>
                                <option>Madrasah Board</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Full Marks</label>
                            <input type="text" class="form-control" name="marks">
                        </div>

                        <div class="form-group">
                            <label>Time</label>
                            <input type="text" class="form-control" name="time">
                        </div>

                        <div class="form-group">
                            <label>[N.B. — ]</label>
                            <textarea type="text" class="form-control" name="note"
                            rows="4"></textarea>
                        </div>

                        <div id="buttonContainer">
                            <input type="hidden" name="form_submitted" value="1"/>
                            <input class="myButton" name="submit" type="submit" value="Next">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <?php @include("footer.php") ?>
    </body>
</html>
<script src="navbar.js"></script>









