<?php
// Initialize the session
    session_start();
    $sid = $_SESSION['userid'];

    // $sem = $_POST['semester'];
    // $semester = $sem[0];
?>

<!DOCTYPE html>
    <html lang="zxx" class="no-js">
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>LUNAR: Drop</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!-- CSS -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">                
        <link rel="stylesheet" href="css/nice-select.css">                          
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">             
        <link rel="stylesheet" href="css/main.css">

    </head>


<!--    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post"> -->
    <body>  
        <header id="header">
            <div class="container main-menu">
                <div class="row align-items-center justify-content-between d-flex">
                    <div id="logo">
                        <a href="index.html"><img src="img/logo_stacked_hori.jpg" alt="" title="" /></a>
                    </div>
                    
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="user-search.php">Search</a></li>
                            <li><a href="user-enroll.php">Enroll</a></li>
                            <li class="menu-has-children"><a href="">Record</a>
                                <ul>
                                    <li><a href="user-record-current.php">Current</a></li>
                                    <li><a href="user-record-history.php">History</a></li>
                                </ul>
                            </li>
                            <li><a href="user-drop.php">Drop</a></li>
                        </ul>
                    </nav><!-- #nav-menu-container -->                  
                </div>
            </div>
        </header><!-- #header -->
              
              
        <!-- start banner Area -->
        <section class="about-banner">
            <div class="container">             
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            DROP COURSES                
                        </h1>   
                    </div>  
                </div>
            </div>
        </section>
        <!-- End banner Area -->    

<!--<form method="post" action="user-record-current.php">-->
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
<div class="container">
    <?php
                        //@ini_set('memory_limit', '512M');
        $semester = $_SESSION["semester"];

        $host = 'localhost';
        $user = 'lunar';
        $pw = 'lunar';
        $dbName = 'lunar';

        $mysqli = new mysqli($host, $user, $pw, $dbName);

        if ($mysqli->connect_error) die($mysqli->connect_error);
        //echo $subject;
        //echo $plname;
        if(!empty($_POST['checkbox'])) {
            foreach($_POST['checkbox'] as $selected) {
                    //echo "<p\t>".$selected."</p>";

                $sql="DELETE FROM Contains WHERE classid = $selected 
                                AND rid IN (SELECT rid FROM Takes WHERE sid=$sid);";
                               
            }    
        }
        if($mysqli->query($sql) === true){ 
            echo "<br>"."Selected class has deleted successfully."; 
        } else{ 
            echo "ERROR: Could not able to execute $sql. ". $mysqli->error; 
        }  
        $sql = "SELECT Cr.subject, Cr.crs, Cr.title, Cl.cmp, Cl.credits, Pr.pfname, Pr.plname, 
                        Cl.cap, Cl.classid, Cl.semester
                FROM Courses Cr, Classes Cl, Professors Pr, 
                    Takes T, Record R, Contains Ct
                WHERE T.sid=$sid AND Cr.cid=Cl.cid AND Cl.pid=Pr.pid 
                   AND semester='$semester' AND R.rid=Ct.rid AND Ct.classid=Cl.classid;";

        $result = $mysqli->query($sql);
        $row = mysqli_fetch_array($result);

        $numrows = $result->num_rows;

        if($numrows != 0) {
            echo "<table class='table table-sm'>";
                echo "<thead>";
                    echo "<tr>";
                        echo "<th scope='col'>SUB</th>";
                        echo "<th scope='col'>NUM</th>";
                        echo "<th scope='col'>TITLE</th>";
                        echo "<th scope='col'>CMP</th>";
                        echo "<th scope='col'>CREDIT</th>";
                        echo "<th scope='col'>PROF NAME</th>";
                        echo "<th scope='col'>LAST NAME</th>";
                        echo "<th scope='col'>CAP</th>";
                        echo "<th scope='col'>ID</th>";
                    echo "</tr>";
                echo "</thead>";
        }

        if($numrows > 0) {
                echo "<tbody>";
                $counter = 1;
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                                $subject = $row['subject'];
                                $crs = $row['crs'];
                                $title = $row['title'];
                                $cmp = $row['cmp'];
                                $credits = $row['credits'];
                                $pfname = $row['pfname'];
                                $plname = $row['plname'];
                                $day = $row['day'];
                                $stime = $row['stime'];
                                $etime = $row['etime'];
                                $cap = $row['cap'];
                                $classid = $row['classid'];

                        switch ($day) {
                            case 2:
                                $day="MON";
                                break;
                            case 3:
                                $day="TUE";
                                break;
                            case 4:
                                $day="WED";
                                break;
                            case 5:
                                $day="THR";
                                break;
                            case 6:
                                $day="FRI";
                                break;
                            case 7:
                                $day="SAT";
                                break;
                        }
                        echo "<td>";
                            echo $subject;
                        echo "</td>";
                        echo "<td>";
                            echo $crs;
                        echo "</td>";
                        echo "<td>";
                            echo $title;
                        echo "</td>";
                        echo "<td>";
                            echo $cmp;
                        echo "</td>";                        
                        echo "<td>";
                            echo $credits;
                        echo "</td>";
                        echo "<td>";
                            echo $pfname;
                        echo "</td>";
                        echo "<td>";
                            echo $plname;
                        echo "</td>";
                        echo "<td>";
                            echo $cap;
                        echo "</td>";
                        echo "<td>";
                            echo $classid;
                        echo "</td>";
                    echo "</tr>";
                    $counter++;
                }
            }
        
            echo "</tbody>";
            echo "</table>";


            $mysqli->close();
        ?>

    </div>
</form>
            
        <!-- start footer Area -->
        <footer class="footer-area section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>About Us</h4>
                            <p>
                            CSE305 Final Project <br><br>
                            HanBin Baik - hanbin.baik@stonybrook.edu <br>
                            Hanna Jung - hanna.jung@stonybrook.edu <br>
                            Hyejun Jeong - hye-jun.jeong@stonybrook.edu <br>
                            </p>                                
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End footer Area -->        

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>          
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>         
        <script src="js/easing.min.js"></script>            
        <script src="js/hoverIntent.js"></script>
        <script src="js/superfish.min.js"></script> 
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script> 
        <script src="js/jquery.tabs.min.js"></script>                       
        <script src="js/jquery.nice-select.min.js"></script>    
        <script src="js/isotope.pkgd.min.js"></script>          
        <script src="js/waypoints.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/simple-skillbar.js"></script>                           
        <script src="js/owl.carousel.min.js"></script>                          
        <script src="js/mail-script.js"></script>   
        <script src="js/main.js"></script>  
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    </body>
</html>