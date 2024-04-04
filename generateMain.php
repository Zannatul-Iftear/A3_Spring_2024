<?php
    $subject='';
    if (isset($_GET['subject'])) {
        $subject = htmlspecialchars($_GET['subject'], ENT_QUOTES, 'UTF-8');
    }

    if($subject=='physics'){$subject='Physics';}
    else{$subject='Higher Mathematics';}

    $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');

    $selectedCreative=[];
    $selectedMCQ=[];

    $sql = "SELECT paperID
    FROM `papers` 
    WHERE paperSubject='$subject'";
    $result = $conn->query($sql);
    
    if($subject=="Physics"){
        if ($result && $result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $paperID = $row["paperID"];
                
                $sqlC = "SELECT questionID
                FROM `questions` 
                WHERE paperID='$paperID' AND questionType='Creative' ORDER BY RAND()";
                $resultC = $conn->query($sqlC);
        
                if ($resultC && $resultC->num_rows > 0) {
                    while($rowC = $resultC->fetch_assoc()) {
                        $selectedCreative[] = (int)$rowC["questionID"];
                    }
                } else {}

                $sqlM = "SELECT questionID
                FROM `questions` 
                WHERE paperID='$paperID' AND questionType='MCQ' ORDER BY RAND()";
                $resultM = $conn->query($sqlM);
        
                if ($resultM && $resultM->num_rows > 0) {
                    while($rowM = $resultM->fetch_assoc()) {
                        $selectedMCQ[] = (int)$rowM["questionID"];
                    }
                } else {}
            }
            shuffle($selectedCreative);
            $selectedCreative = array_slice($selectedCreative, 0, 8);
        } else {}
    }

    else if($subject=="Higher Mathematics"){
        $setA=[];
        $setB=[];
        $setC=[];
        if ($result && $result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $paperID = $row["paperID"];
                
                $sqlA = "SELECT questionID
                FROM `questions` 
                WHERE paperID='$paperID' AND questionSet='A: Algebra' ORDER BY RAND()";
                $resultA = $conn->query($sqlA);
        
                if ($resultA && $resultA->num_rows > 0) {
                    while($rowA = $resultA->fetch_assoc()) {
                        $setA[] = (int)$rowA["questionID"];
                    }
                } else {}

                $sqlB = "SELECT questionID
                FROM `questions` 
                WHERE paperID='$paperID' AND questionSet='B: Geometry and Vector' ORDER BY RAND()";
                $resultB = $conn->query($sqlB);
        
                if ($resultB && $resultB->num_rows > 0) {
                    while($rowB = $resultB->fetch_assoc()) {
                        $setB[] = (int)$rowB["questionID"];
                    }
                } else {}

                $sqlC = "SELECT questionID
                FROM `questions` 
                WHERE paperID='$paperID' AND questionSet='C: Trigonometry and Probability' ORDER BY RAND()";
                $resultC = $conn->query($sqlC);
        
                if ($resultC && $resultC->num_rows > 0) {
                    while($rowC = $resultC->fetch_assoc()) {
                        $setC[] = (int)$rowC["questionID"];
                    }
                } else {}

                $sqlM = "SELECT questionID
                FROM `questions` 
                WHERE paperID='$paperID' AND questionType='MCQ' ORDER BY RAND()";
                $resultM = $conn->query($sqlM);
        
                if ($resultM && $resultM->num_rows > 0) {
                    while($rowM = $resultM->fetch_assoc()) {
                        $selectedMCQ[] = (int)$rowM["questionID"];
                    }
                } else {}
            }
            shuffle($setA); $setA = array_slice($setA, 0, 3);
            shuffle($setB); $setB = array_slice($setB, 0, 3);
            shuffle($setC); $setC = array_slice($setC, 0, 2);
            $selectedCreative = array_merge($setA, $setB, $setC);
        } else {}
    }
    shuffle($selectedMCQ); $selectedMCQ = array_slice($selectedMCQ, 0, 25);

    $conn->close();
    $chapterMarks=[0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    $sourceQuestions=[[],[],[],[]];
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
        
        <?php echo '<title>Generated '.$subject.' Question Paper</title>'; ?>
        <link id="stylesheet" rel="stylesheet" href="styleChapter.css">
        <link id="stylesheet" rel="stylesheet" href="stylePaperMain.css">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
                <?php echo '<p>Generated '.$subject.' Question Paper</p>'; ?>
            </div>

            <?php 
                    // echo count($selectedCreative);
                    // echo '[' . implode(',', $selectedCreative) . ']'; 
                    // echo '<br>';
                    // echo count($selectedMCQ);
                    // echo '[' . implode(',', $selectedMCQ) . ']'; 
            ?>
      
            <div class="row" id="myRow" >
                <div class="col-md-8 mx-auto">
                    <div class="pageContainer">

                        <!----------------------- PAPER HEADER ------------------------->

                        <h3>Generated Question Paper</h3>
                        <div class="paperInfo">
                            <p  class="bruh">Time — 2 Hours 30 minutes</p>
                            <div class="titleContainer">
                                <p><b><?php echo $subject; ?></b></p>
                                <p><b>Creative Essay Type</b></p>
                            </div>
                            <div class="titleContainer2">
                                <div class="subjectCodeBlock">
                                    <p>Subject code</p>
                                    <div class=codeContainer>
                                        <span class="code">1</span>
                                        <?php 
                                        if($subject=="Physics"){echo '<span class="code">3</span>';}
                                        else{echo '<span class="code">2</span>';}
                                        ?>
                                        <span class="code">6</span>
                                    </div>
                                </div>
                                <p>Full marks — 50</p>
                            </div>
                        </div>
                        [N.B.- The figures in the right margin indicate full marks. Answer any five Questions]
                        <br><br>

                        <!----------------------- CREATIVE QUESTIONS ------------------------->

                        <?php 
                        $length = count($selectedCreative);
                        $counter=0;
                        for ($i = 0; $i < $length; $i++) {
                            $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
                            $sql = "SELECT questionMarks, questionSet, questionText, questionImg, paperID, chapterID
                            FROM `questions` 
                            WHERE questionID='$selectedCreative[$i]'";
                            $result = $conn->query($sql);
    
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    $counter+=1;
                                    $questionMarks = $row["questionMarks"];
                                    $questionSet = $row["questionSet"];
                                    $questionText = $row["questionText"];
                                    $questionImg = $row["questionImg"];
                                    $chapterID = $row["chapterID"];
                                    $paperID = $row["paperID"];
    
                                    if($questionSet != 'null'){
                                        if($i==0 || $i==3 || $i==6) {echo '<h3> Set '.$questionSet.'</h3>';}
                                    }
    
                                    echo '<div class="questionContainer">';
                                    echo '<div class="questionHeader">';
                                    echo '<p class="questionNumber">Question '.$counter.'</p>';
    
                                    // Getting chapter name
    
                                    $sql2 = "SELECT chapterNumber, chapterName
                                    FROM `chapters` 
                                    WHERE chapterID=$chapterID";
                                    $result2 = $conn->query($sql2);
                                    $row2 = $result2->fetch_assoc();
                                    $chapterNumber = $row2["chapterNumber"];
                                    $chapterName = $row2["chapterName"];
    
                                    $chapterIndex = (int)$row2["chapterNumber"] - 1;
                                    $chapterMarks[$chapterIndex] += 10;
                                    
                                    if($subject=="Physics"){
                                        echo '<a href ="chapterMain.php?subjectName=Physics" target="_blank" class="questionChapter">Chapter '.$chapterNumber.'. '.$chapterName.'</a>';
                                    }
                                    else{
                                        echo '<a href ="chapterMain.php?subjectName=Higher+Mathematics" target="_blank" class="questionChapter">Chapter '.$chapterNumber.'. '.$chapterName.'</a>';
                                    }
    
                                    echo '<p class="questionMarks">'.$questionMarks.'</p>';
                                    echo '</div>';
                                    echo '<div class="col-md-10 mx-auto">';
                                    if($questionImg != 'none') {echo '<img src="diagrams/'.$questionImg.'" class="questionImg">';}
                                    echo '<p class="questionText">'.$questionText.'</p>';
                                    echo '</div>';
                                    echo '</div>';

                                    $sql3 = "SELECT paperYear, paperBoard
                                    FROM `papers` 
                                    WHERE paperID=$paperID";
                                    $result3 = $conn->query($sql3);
                                    $row3 = $result3->fetch_assoc();
                                    $paperYear = $row3["paperYear"];
                                    $paperBoard = $row3["paperBoard"];

                                    $sourceQuestions[0][] = $counter;
                                    $sourceQuestions[1][] = '<a href="pastPaperMAIN.php?paperID='.$paperID.'" class="paperLink">SSC '.$subject.' '.$paperYear.' - '.$paperBoard.'</a>';
                                    
                                }
                            } else {
                                echo $selectedCreative[$i];
                                echo '<br>';
                            }
                            $conn->close();
                        }



                    ?>
                    </div>

                    <div class="pageContainer">
                        <div class="paperInfo">
                            <div class="bruh">
                                <p>Time — 25 Minutes</p>
                                <p>Full Marks — 25</p>
                            </div>
                            <div class="titleContainer">
                                <p><b>Multiple Choice Questions</b></p>
                            </div>
                            <div class="titleContainer2">
                                <div class="subjectCodeBlock">
                                    <p>Subject code</p>
                                    <div class=codeContainer>
                                        <span class="code">1</span>
                                        <?php 
                                        if($subject=="Physics"){echo '<span class="code">3</span>';}
                                        else{echo '<span class="code">2</span>';}
                                        ?>
                                        <span class="code">6</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        [Find out the best/correct answer and fill the circles with ballpoint pen. Each question is worth 1 mark.]
                        <br><br>

                        <!----------------------- MULTIPLE CHOICE QUESTIONS ------------------------->

                        <?php 
                        $length = count($selectedMCQ);
                        $counter=0;
                        for ($i = 0; $i < $length; $i++) {
                            $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
                            $sql = "SELECT questionMarks, questionText, questionImg, paperID, chapterID
                            FROM `questions` 
                            WHERE questionID='$selectedMCQ[$i]'";
                            $result = $conn->query($sql);
    
                    
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    $counter+=1;
                                    $questionMarks = $row["questionMarks"];
                                    $questionText = $row["questionText"];
                                    $questionImg = $row["questionImg"];
                                    $chapterID = $row["chapterID"];
                                    $paperID = $row["paperID"];
    
                                    echo '<div class="questionContainer">';
                                    echo '<div class="questionHeader">';
                                    echo '<p class="questionNumber">Question '.$counter.'</p>';
    
                                    // Getting chapter name
    
                                    $sql2 = "SELECT chapterNumber, chapterName
                                    FROM `chapters` 
                                    WHERE chapterID=$chapterID";
                                    $result2 = $conn->query($sql2);
                                    $row2 = $result2->fetch_assoc();
                                    $chapterNumber = $row2["chapterNumber"];
                                    $chapterName = $row2["chapterName"];
    
                                    $chapterIndex = (int)$row2["chapterNumber"] - 1;
                                    $chapterMarks[$chapterIndex] += 1;
                                    
                                    if($subject=="Physics"){
                                        echo '<a href ="chapterMain.php?subjectName=Physics" target="_blank" class="questionChapter">Chapter '.$chapterNumber.'. '.$chapterName.'</a>';
                                    }
                                    else{
                                        echo '<a href ="chapterMain.php?subjectName=Higher+Mathematics" target="_blank" class="questionChapter">Chapter '.$chapterNumber.'. '.$chapterName.'</a>';
                                    }
    
                                    echo '<p class="questionMarks">'.$questionMarks.'</p>';
                                    echo '</div>';
                                    echo '<div class="col-md-10 mx-auto">';
                                    if($questionImg != 'none') {echo '<img src="diagrams/'.$questionImg.'" class="questionImg">';}
                                    echo '<p class="questionText">'.$questionText.'</p>';
                                    echo '</div>';
                                    echo '</div>';

                                    $sql3 = "SELECT paperYear, paperBoard
                                    FROM `papers` 
                                    WHERE paperID=$paperID";
                                    $result3 = $conn->query($sql3);
                                    $row3 = $result3->fetch_assoc();
                                    $paperYear = $row3["paperYear"];
                                    $paperBoard = $row3["paperBoard"];

                                    $sourceQuestions[2][] = $counter;
                                    $sourceQuestions[3][] = '<a href="pastPaperMAIN.php?paperID='.$paperID.'" class="paperLink">SSC '.$subject.' '.$paperYear.' - '.$paperBoard.'</a>';
                                    
                                }
                            } else {
                                echo $selectedMCQ[$i];
                                echo '<br>';
                            }
                            $conn->close();
                        }

                        ?>
                    </div>

                <p id="marksTitle">Marks Distribution</p>

                <canvas id="myChart" width="400" height="200"></canvas>

                <script>


                    //     <?php
                            $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
                            $sql = "SELECT chapterNumber, chapterName
                            FROM `chapters` 
                            WHERE chapterSubject='$subject'
                            ORDER BY chapterNumber ASC";
                            $result = $conn->query($sql);

                            $chapterList=[];

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    $chapterNumber = $row["chapterNumber"];
                                    $chapterName = $row["chapterName"];

                                    $chapterList[] = 'Ch '.$chapterNumber.' - '. $chapterName;
                                }
                            } else {
                                echo "No products found.";
                            }
                            $conn->close();
                    //     ?>









                    // // Convert PHP array to JavaScript
                    var phpArray = <?php echo json_encode($chapterMarks); ?>;
                    var chapterList = <?php echo json_encode($chapterList); ?>;
                     var ctx = document.getElementById('myChart').getContext('2d');

                     var myChart = new Chart(ctx, {
                         type: 'bar',
                         data: {
                             labels: chapterList,
                             datasets: [{
                                 label: 'Total Marks',
                                 data: phpArray,
                                 backgroundColor: '#3e91ff',
                                 borderColor: '#15498e',
                                 borderWidth: 1
                             }]
                         },
                         options: {
                             indexAxis: 'y',
                             scales: {
                                 y: {
                                     beginAtZero: true
                                 }
                             }
                         }
                     });
                </script>

                    
                <p id="marksTitle">Question Sources</p>

                <h5><b>Creative Essay Type Questions:</b></h5>

                <div id="chaptersContainer">
                        <div id="heading">
                            <p id="headingNumber">Ques. No.</p>
                            <p id="headingName">Source Paper Name</p>
                        </div>
                        <?php
                            for ( $i = 0; $i < count($sourceQuestions[0]); $i++) {
                                echo '<div class="chapter">';
                                echo '<p class="chapterNumber">'.$sourceQuestions[0][$i].'</p>';
                                echo '<p class="chapterName">'.$sourceQuestions[1][$i].'</p>';
                                echo '</div>';
                            }
                        ?>
                </div>

                <br><h5><b>Multiple Choice Questions:</b></h5>

                <div id="chaptersContainer">
                        <div id="heading">
                            <p id="headingNumber">Ques. No.</p>
                            <p id="headingName">Source Paper Name</p>
                        </div>
                        <?php
                            for ( $i = 0; $i < count($sourceQuestions[2]); $i++) {
                                echo '<div class="chapter">';
                                echo '<p class="chapterNumber">'.$sourceQuestions[2][$i].'</p>';
                                echo '<p class="chapterName">'.$sourceQuestions[3][$i].'</p>';
                                echo '</div>';
                            }
                        ?>
                </div>    



                </div>
            </div>
        </div>
        <?php @include("footer.php") ?>
    </body>
</html>
<script src="navbar.js"></script>