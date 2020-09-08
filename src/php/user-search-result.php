<?php
// Initialize the session
    session_start();

        if((isset($_POST['option'])) && ($_POST['option'] != "")) 
            $option = $_POST['option'];
        else 
            $option = "";

        if((isset($_POST['subject'])) && ($_POST['subject'] != "")) 
            $subject = $_POST['subject'];
        else
            $subject = "";

        if((isset($_POST['crs'])) && ($_POST['crs'] != "")) 
            $crs = $_POST['crs'];
        else
            $crs = "";

        if((isset($_POST['plname'])) && ($_POST['plname'] != "")) 
            $plname = $_POST['plname'];
        else
            $plname = "";

        if((isset($_POST['classid'])) && ($_POST['classid'] != "")) 
            $classid = $_POST['classid'];
        else
            $classid = "";
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
		<title>LUNAR: Search</title>

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
							CLASS SEARCH				
						</h1>	
					</div>	
				</div>
			</div>
		</section>
		<!-- End banner Area -->	
        
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    <div class="container">
    <?php
                        //@ini_set('memory_limit', '512M');
        $host = 'localhost';
        $user = 'lunar';
        $pw = 'lunar';
        $dbName = 'lunar';

        $mysqli = new mysqli($host, $user, $pw, $dbName);

        if ($mysqli->connect_error) die($mysqli->connect_error);

        $semester = $_SESSION["semester"];
            
        if(isset($_POST['search'])){
            if(!empty($_POST['sbc_list'])){
                $sbclist = $_POST['sbc_list'];

                $n = count($sbclist);

                for($i=0; $i<$n; $i++) {
                    if($i == 0)
                        $sbc = "\"".$sbclist[$i];
                    else if($i > 0 && $i < $n)
                        $sbc = $sbc."\",\"".$sbclist[$i];
                }
                $sbc=$sbc."\"";
            }
        }

        $sbjsql = "";
        $crssql = "";
        $cidsql = "";
        $plnamesql = "";
        $sbcsql = "";
        $sql = "";

        if($subject=="")
            $sbjsql = 'TRUE';
        else 
            $sbjsql = "subject='$subject'";

        if($crs == "")
            $crssql = 'TRUE';
        else {
            if($option == 0) 
                $crssql = 'crs<='.$crs;
            else if($option == 1) 
                $crssql = 'crs='.$crs;
            else if($option == 2) 
                $crssql = 'crs>='.$crs;   
        }

        if($subject=="" AND $crs="")
            $cidsql = 'TRUE';
        else 
            $cidsql = 'cid IN (SELECT cid FROM Courses WHERE '.$crssql . ' AND ' . $sbjsql;

        if($plname =="")
            $plnamesql = 'TRUE';
        else 
            $plnamesql = ' pid IN (SELECT pid FROM Professors WHERE plname="' . $plname;

        if($sbc=="")
            $sbcsql = 'TRUE';
        else 
            $sbcsql = 'cid IN (SELECT cid FROM Fulfills WHERE sbcid IN 
                (SELECT sbcid FROM SBCReq WHERE SBCReq.name IN ('. $sbc. ')))';

        $sql = "SELECT classid FROM Classes WHERE ".$cidsql." AND ".$plnamesql . " AND " . $sbcsql . ");";

        $result = $mysqli->query($sql);
        $row = mysqli_fetch_array($result);

        $numrows = $result->num_rows;

        if($numrows == 0) {
            echo "<h2>NO SUCH RESULT<h2>";
        }
        else { // begin else
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
                        echo "<th scope='col'>CLASS DAY</th>";
                        echo "<th scope='col'>START TIME</th>";
                        echo "<th scope='col'>END TIME</th>";
                        //echo "<th scope='col'>CAP</th>";
                        echo "<th scope='col'>ID</th>";
                        echo "<th scope='col'>SBC</th>";
                    echo "</tr>";
                echo "</thead>";
            echo "<tbody>";

            while($row = $result->fetch_assoc()) { // begin while 1
                $classid = $row['classid'];

                $select = "SELECT Cr.subject, Cr.crs, Cr.title, Cl.cmp, Cl.credits, Pr.pfname, Pr.plname, Ts.stime, Ts.etime, Cl.cap, Cl.classid, Cl.semester
                        FROM Courses Cr, Classes Cl, Professors Pr, Timeslot Ts, ClassOfferedOn Coo
                        WHERE Cr.cid=Cl.cid AND Cl.pid=Pr.pid AND Cl.classid=$classid AND Coo.classid=$classid AND Coo.slotid=Ts.slotid;";

                $newresult = $mysqli->query($select);
                $newrow = mysqli_fetch_array($newresult);

                while($newrow = $newresult->fetch_assoc()) { // begin while2
                    echo "<tr>";

                    $subject = $newrow['subject'];
                    $crs = $newrow['crs'];
                    $title = $newrow['title'];
                    $cmp = $newrow['cmp'];
                    $credits = $newrow['credits'];
                    $pfname = $newrow['pfname'];
                    $plname = $newrow['plname'];
                    //$day = $newrow['day'];
                    $stime = $newrow['stime'];
                    $etime = $newrow['etime'];
                    $cap = $newrow['cap'];
                    //$sbc = $newrow['name'];
                    //$classid = $row['classid'];
                    
                    $sbcquery = "SELECT S.name
                                FROM Courses Cr, Classes Cl, SBCReq S, Fulfills F
                                WHERE Cr.cid=Cl.cid AND Cl.classid=$classid AND Cl.cid=F.cid AND Cr.cid=F.cid AND F.sbcid=S.sbcid;";
                    $sbcresult = $mysqli->query($sbcquery);
                    $sbcrow = mysqli_fetch_array($sbcresult);
                    $sbcdisp = "";
                    
                    while($sbcrow = $sbcresult->fetch_assoc()) {
                        $sbcdisp = $sbcdisp . "\n" . $sbcrow['name'];
                    }

                    $dayquery = "SELECT Ts.day
                                FROM Courses Cr, Classes Cl, Timeslot Ts, ClassOfferedOn Coo
                                WHERE Cr.cid=Cl.cid AND Cl.classid=$classid AND Coo.classid=$classid AND Coo.slotid=Ts.slotid;";     
                    $dayresult = $mysqli->query($dayquery);
                    //$dayrow = mysqli_fetch_array($dayresult);
                    $daydisp = "";

                    //echo $daydisp;
                    //echo "daydisp".$daydisp."/";
                    while($dayrow = $dayresult->fetch_assoc()) {
                        $tmpday = $dayrow['day'];
                        switch ($tmpday) {
                            case 2:
                                $tmpday="M";
                                break;
                            case 3:
                                $tmpday="TU";
                                break;
                            case 4:
                                $tmpday="W";
                                break;
                            case 5:
                                $tmpday="TH";
                                break;
                            case 6:
                                $tmpday="F";
                                break;
                            case 7:
                                $tmpday="SAT";
                                break;
                        }

                        $daydisp = $daydisp . $tmpday;
                        //echo "after concat: ".$daydisp."/";
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
                        echo $daydisp;
                    echo "</td>";
                    echo "<td>";
                        echo $stime;
                    echo "</td>";
                    echo "<td>";
                        echo $etime;
                    echo "</td>";
                    // echo "<td>";
                    //     echo $cap;
                    // echo "</td>";
                    echo "<td>";
                        echo $classid;
                    echo "</td>";
                    echo "<td>";
                        echo $sbcdisp;
                    echo "</td>";

                    echo "</tr>";
                } // end while2
            } // end while1
        } // end else
    
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
    </body>
</html>