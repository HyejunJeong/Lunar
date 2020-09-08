<?php
	session_start();
	$host = 'localhost';
	$user = 'lunar';
	$pw = 'lunar';
	$dbName = 'lunar';
	$mysqli = new mysqli($host, $user, $pw, $dbName);
	if ($mysqli->connect_error) die($mysqli->connect_error);

	$query_success = '';
	$psw_error = '';
   // receive form
  if($_POST && isset($_POST['sfname']) && ($_POST['sfname'] != "")
		&& isset($_POST['slname']) && ($_POST['slname'] != "")
		&& isset($_POST['type']) && ($_POST['type'] != "")
		&& isset($_POST['psw']) && ($_POST['psw'] != "")) {

		if (strlen($_POST["psw"]) > '10'){
			$psw_error = 'Password must be length of at most 10 or less.';
		} elseif ($_POST['psw']!=$_POST['psw-repeat']) {
			$psw_error = 'Your password and repeat password does not match.';
		} else {
			$psw_error = '';
			$sfname = get_post($mysqli, 'sfname');
			$slname = get_post($mysqli, 'slname');
			$type = get_post($mysqli, 'type');
			$psw = get_post($mysqli, 'psw');

			$sql = "SELECT f_create_student_account('$sfname', '$slname', '$psw', '$type');";
			if ($mysqli->query($sql)) {
				$query_success = "New student added successfully";
			} else {
				$query_success = "Error: " . $sql . "<br>" . $mysqli->error;
			}
		}
	}else{
		$query_success = '';
		$psw_error = '';
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
		<title>LUNAR: Add Student</title>

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
				      		</li>
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
							ADD STUDENT
						</h1>
					</div>
				</div>
			</div>
		</section>
		<!-- End banner Area -->

        <div class="table-title">
           	<h5>ADD NEW STUDENT</h5>
        </div>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

        <table class="table table-borderless-small">
            <tbody>
            	<tr>
                    <td><label for="type">TYPE</label></td>
                    <td>
					<div style="height: 50px;">
                    	<select name="type" id="type" required>
	                        <option value="UG">Undergraduate</option>
	                        <option value="G">Graduate</option>
                        </select>
                    </div>
                    </td>
                </tr>

                <tr>
                	<td><label for="sfname">FIRST NAME</label></td>
                    <td><input type="text" name="sfname" id="sfname" placeholder="" required></td>
                	<td><label for="slname">LAST NAME</label></td>
                    <td><input type="text" name="slname" id="slname" placeholder="" required></td>
                </tr>
								<tr>
									<td><label for="psw"><b>Password</b></label></td>
							    <td><input type="password" placeholder="Enter Password" name="psw" pattern=".{,10}" title="Must be at most 10 characters." required></td>

							    <td><label for="psw-repeat"><b>Repeat Password</b></label></td>
							    <td><input type="password" placeholder="Repeat Password" name="psw-repeat" required></td>
								</tr>
            </tbody>
        </table>

        <input name="Submit" type="submit" class="search-button" value="ADD">
        </form>

		        <div class="container">
								<?php echo $psw_error; ?>
								<?php echo $query_success; ?>
		        </div>



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
