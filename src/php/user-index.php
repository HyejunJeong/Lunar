<?php
   session_start();

   // receive form
   if((isset($_POST['userid'])) && ($_POST['userid'] != "")) 
   	$userid = $_POST['userid'];
   else 
   	$userid = "";

   if((isset($_POST['password'])) && ($_POST['password'] != "")) 
   	$password = $_POST['password'];
   else 
   	$password = "";
   
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
		<title>LUNAR</title>

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
							STUDENT LOGIN				
						</h1>	
					</div>	
				</div>
			</div>
		</section>
		<!-- End banner Area -->

		<!-- start login Area -->
        <div class="banner-content-text">
         	<div class="wrapper">
            	<form method="post" action="user-index.php">

					<label for='userid' class='psloginlabel'>Stony Brook ID#</label>
    				<input id="userid" name="userid" type="text" class="pslogineditbox" value="<?php echo $userid; ?>" size="12" tabindex="1" required>

    				<label for='password' class='psloginlabel'>Password</label>
    				<input TYPE="password" id="password" name="password" class="pslogineditbox" size="12" tabindex="2" required>

    				<input name="Submit" type="submit" class="psloginbutton"  tabindex="3" value="Sign In" onclick="submitAction(document.login)">

    				<div class="hide-test password-help">
    				    <a href="https://adam.cc.sunysb.edu/solarpwd.html">Account & Password Help</a>
    				</div>
                </form>

		        <div class="container">
		         	<?php
						//@ini_set('memory_limit', '512M');
						$host = 'localhost';
						$user = 'lunar';
						$pw = 'lunar';
						$dbName = 'lunar';
						$mysqli = new mysqli($host, $user, $pw, $dbName);

						if ($mysqli->connect_error) die($mysqli->connect_error);

						$sql = "SELECT * FROM StudentAccounts WHERE sid = '$userid' AND pswd = '$password'";
						//echo "<h1>id $userid, password $password</h1>";
							
						$result = $mysqli->query($sql);
						$row = mysqli_fetch_array($result);
				        $numrows = $result->num_rows;

						if ($numrows == 1 ) {
						    // Create a user session
						    $_SESSION['login'] = true;
						    $_SESSION['userid'] = $userid;
							    
							// Then direct to the welcome page
						   header("Location: user-welcome.php");
							//echo "<h1>Login failed!</h1>";
							//echo "<p>Try again.</p>";
						}
						if($numrows == 0) {
							echo "<h1>Login failed!</h1>";
							echo "<p>Try again.</p>";
						}
					?>

		        </div>
            </div>
        </div>
		<!-- End login Area -->

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