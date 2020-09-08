<?php
// Initialize the session
    session_start();

    $host = 'localhost';
    $user = 'lunar';
    $pw = 'lunar';
    $dbName = 'lunar';


    if((isset($_POST['sid'])) && ($_POST['sid'] != ""))
        $sid = $_POST['sid'];
    else
        $sid = "";

    $mysqli = new mysqli($host, $user, $pw, $dbName);

    if ($mysqli->connect_error) die($mysqli->connect_error);

    // DCODE SETUP
    $sql = "SELECT dcode FROM Departments;";
    $result = $mysqli->query($sql);
    $dcodes = array();
    while($row = $result->fetch_assoc()) {
        $dcodes[$row['dcode']] = 0;
    }
    $major_options = '';
    $minor_options = '';

    $sql = "SELECT sfname, slname FROM Students WHERE sid=$sid ;";
    $result = $mysqli->query($sql);

    $numrows = $result->num_rows;

    if($numrows == 0) {
        echo "<h2> NO SUCH RESULT </h2>";
    }
    else {
        $row = $result->fetch_assoc();
        $sfname = $row['sfname'];
        $slname = $row['slname'];
    }

    $sql = "SELECT dcode FROM Departments D, MajorsIn M WHERE D.did=M.did AND M.sid=$sid;";
    $result = $mysqli->query($sql);

    if(mysqli_num_rows($result)>0) {
        $row = $result->fetch_assoc();
        $dcodes[$row['dcode']] = 1;
    }

    $sql = "SELECT dcode FROM Departments D, MinorsIn M WHERE D.did=M.did AND M.sid=$sid;";
    $result = $mysqli->query($sql);

    if(mysqli_num_rows($result)>0) {
        $row = $result->fetch_assoc();
        $dcodes[$row['dcode']] = 2;
    }
    $sql = "SELECT dcode FROM Departments;";
    $result = $mysqli->query($sql);
    while($row = $result->fetch_assoc()) {
        $major_options .= "<option value='".$row['dcode']."' ".($dcodes[$row['dcode']]==1 ? 'selected' : '').">".$row['dcode']."</option>";
        $minor_options .= "<option value='".$row['dcode']."' ".($dcodes[$row['dcode']]==2 ? 'selected' : '').">".$row['dcode']."</option>";
    }

    if(isset($_POST['sfname']) && ($_POST['sfname'] != "")
      && isset($_POST['slname']) && ($_POST['slname'] != "")
      && isset($_POST['major']) && ($_POST['major'] != 'NONE')){

        $sfname = get_post($mysqli, 'sfname');
        $slname = get_post($mysqli, 'slname');
        $sql = "UPDATE Students SET sfname = '$sfname', slname = '$slname' WHERE sid=$sid;";
        $mysqli->query($sql);
        $major = get_post($mysqli, 'major');
        $sql = "REPLACE INTO MajorsIn VALUES ($sid, (SELECT did FROM Departments WHERE dcode='$major'));";
        $mysqli->query($sql);
        if (isset($_POST['minor']) && ($_POST['minor'] != 'NONE')){
          $minor = get_post($mysqli, 'minor');
          $sql = "REPLACE INTO MinorsIn VALUES ($sid, (SELECT did FROM Departments WHERE dcode='$minor'));";
          $mysqli->query($sql);
        }
      }
    $mysqli->close();

    function get_post($conn, $var) {
      return $conn->real_escape_string($_POST[$var]);
    }
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
		<title>LUNAR: Edit Minor Requirement</title>

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
                            <li class="menu-has-children"><a href="">Add</a>
    			            <ul>
                                <li><a href="admin-add-student.php">Student</a></li>
                                <li><a href="admin-add-professor.php">Professor</a></li>
                                <li><a href="admin-add-course.php">Course</a></li>
    			            </ul>
                            <li class="menu-has-children"><a href="">Edit</a>
    			            <ul>
					              	<li><a href="admin-edit-course.php">Course</a></li>
					              	<li><a href="admin-edit-student.php">Student</a></li>
    			            </ul>
                            </li>
                        <li><a href="admin-record.php">Record</a></li>
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
							EDIT STUDENT
						</h1>
					</div>
				</div>
			</div>
		</section>
		<!-- End banner Area -->

<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">

        <div class="table-title">
            <h5></h5>
        </div>

        <table class="table table-borderless-small">
            <tbody>
                <tr>
                    <td><label for="sid">STUDENT ID</label></td>
                    <td><input type="text" name="sid" id="sid" value="<?php echo $sid?>" ></td>
                </tr>
                <tr>
                    <td><label for="">FIRST NAME</label></td>
                    <td><input type="text" name="sfname" id="sfname" value="<?php echo $sfname?>" ></td>
                    <td><label for="">LAST NAME</label></td>
                    <td><input type="text" name="slname" id="slname" value="<?php echo $slname?>" ></td>
                </tr>

                <tr>
                    <td><label for="major">MAJOR</label></td>
                    <td><select name="major" id="major" required>
                          <option value="none">NONE</option>
                          <?php
                          echo $major_options;
                          ?>
                        </select>
                    </td>

                    <td><label for="minor">MINOR</label></td>
                    <td><select name="minor" id="minor" >
                          <option value="none">NONE</option>
                          <?php
                          echo $minor_options;
                          ?>
                        </select>
                    </td>
                </tr>
			</tbody>
		</table>
       <!-- <a href="user-record-current.html"><input name="Submit" type="submit" class="search-button" value="ENROLL"></a>-->

        <input name="Submit" type="submit" class="search-button" value="EDIT"></form>

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
