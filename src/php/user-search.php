<?php
// Initialize the session
    session_start();
    if((isset($_POST['semester'])) && ($_POST['semester'] != "")) 
        $semester = $_POST['semester'];
    else 
        $semester = "";
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

		<form method="post" action="user-search-course.php">
		<table class="table table-hover" id="search-table">
            <thead>
            	<tr>
            		<th scope="col">SEMESTER</th>
                </tr>
            </thead>
            <tbody>
            	<tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input name="semester[]" type="checkbox" class="custom-control-input" id="spring19" value="spring19">
                          <label class="custom-control-label" for="spring19">Spring 2019</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input name="semester[]" type="checkbox" class="custom-control-input" id="fall19" value="fall19">
                          <label class="custom-control-label" for="fall19">Fall 2019</label>
                        </div>
                    </td>
				</tr>
            </tbody>
        </table>

            <a href="user-search-course.php">
            <input name="Submit" type="submit" class="search-button" value="SEARCH">
        	</a>
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