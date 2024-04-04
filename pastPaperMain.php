<?php
    $paperID='';
    if (isset($_GET['paperID'])) {
        $paperID = htmlspecialchars($_GET['paperID'], ENT_QUOTES, 'UTF-8');
    }

    $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');

    $paperID = intval($paperID);
    $sql = "SELECT paperLevel, paperYear, paperSubject, paperBoard, paperMarks, paperTime, paperNote
    FROM `papers` 
    WHERE paperID=$paperID";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        
        $paperYear = $row["paperYear"];
        $paperSubject = $row["paperSubject"];
        $paperBoard = $row["paperBoard"];
        $paperMarks = $row["paperMarks"];
        $paperTime = $row["paperTime"];
        $paperNote = $row["paperNote"];
    } else {
        echo "No results found.";
        $paperYear = $paperSubject = $paperBoard = $paperMarks = $paperTime = $paperNote = "";
    }

    $conn->close();

    $chapterMarks=[0,0,0,0,0,0,0,0,0,0,0,0,0,0];
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
        
        <?php echo '<title>SSC '.$paperSubject.' '.$paperYear.' - '.$paperBoard.'</title>'; ?>
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
              <?php echo '<p>SSC '.$paperSubject.' '.$paperYear.' - '.$paperBoard.'</p>'; ?>
            </div>
      
            <div class="row" id="myRow" >
                <div class="col-md-8 mx-auto">
                    <div class="pageContainer">

                        <!----------------------- PAPER HEADER ------------------------->

                        <?php echo '<h3>'.$paperBoard.' '.$paperYear.'</h3>'; ?>
                        <div class="paperInfo">
                            <p  class="bruh"><?php echo $paperTime; ?></p>
                            <div class="titleContainer">
                                <p><b><?php echo $paperSubject; ?></b></p>
                                <p><b>Creative Essay Type</b></p>
                            </div>
                            <div class="titleContainer2">
                                <div class="subjectCodeBlock">
                                    <p>Subject code</p>
                                    <div class=codeContainer>
                                        <span class="code">1</span>
                                        <?php 
                                        if($paperSubject=="Physics"){echo '<span class="code">3</span>';}
                                        else{echo '<span class="code">2</span>';}
                                        ?>
                                        <span class="code">6</span>
                                    </div>
                                </div>
                                <p><?php echo $paperMarks; ?></p>
                            </div>
                        </div>
                        <?php echo $paperNote; ?>
                        <br><br>

                        <!----------------------- CREATIVE QUESTIONS ------------------------->

                        <?php 
                        $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
                        $sql = "SELECT questionMarks, questionSet, questionText, questionImg, chapterID
                        FROM `questions` 
                        WHERE paperID=$paperID AND questionType='Creative'
                        ORDER BY questionID ASC";
                        $result = $conn->query($sql);

                        $counter=0;
                        $showSet=false;
                        $checkSet='';

                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                $counter+=1;
                                $questionMarks = $row["questionMarks"];
                                $questionSet = $row["questionSet"];
                                $questionText = $row["questionText"];
                                $questionImg = $row["questionImg"];
                                $chapterID = $row["chapterID"];

                                if($questionSet != 'null'){
                                    if($checkSet != $questionSet) {$showSet=true; $checkSet=$questionSet;}
                                    else{$showSet=false;}
                                    if($showSet == true){echo '<h3> Set '.$questionSet.'</h3>';}
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
                                
                                if($paperSubject=="Physics"){
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
                            }
                        } else {
                            echo "No products found.";
                        }
                        $conn->close();
                    ?>
                    </div>

                    <div class="pageContainer">
                        <div class="paperInfo">
                            <div class="bruh">
                                <p>Time — 35 Minutes</p>
                                <p>Full Marks — 35</p>
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
                                        if($paperSubject=="Physics"){echo '<span class="code">3</span>';}
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
                        $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
                        $sql = "SELECT questionMarks, questionText, questionImg, chapterID
                        FROM `questions` 
                        WHERE paperID=$paperID AND questionType='MCQ'
                        ORDER BY questionID ASC";
                        $result = $conn->query($sql);

                        $counter=0;

                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                $counter+=1;
                                $questionMarks = $row["questionMarks"];
                                $questionText = $row["questionText"];
                                $questionImg = $row["questionImg"];
                                $chapterID = $row["chapterID"];

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
                                
                                if($paperSubject=="Physics"){
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
                            }
                        } else {
                            echo "No products found.";
                        }
                        $conn->close();
                        ?>
                    </div>

                    <p id="marksTitle">Marks Distribution:</p>

                    <canvas id="myChart" width="400" height="200"></canvas>

                    <script>


                        <?php
                            $conn = mysqli_connect('localhost','root','','help_db') or die('connection failed');
                            $sql = "SELECT chapterNumber, chapterName
                            FROM `chapters` 
                            WHERE chapterSubject='$paperSubject'
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
                        ?>









                    // Convert PHP array to JavaScript
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










                </div>
            </div>
        </div>
        <?php @include("footer.php") ?>
    </body>
</html>
<script src="navbar.js"></script>