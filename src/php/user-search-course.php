<?php
// Initialize the session
    session_start();

        if((isset($_POST['classid'])) && ($_POST['classid'] != "")) 
            $classid = $_POST['classid'];
        else 
            $classid = "";

        if((isset($_POST['subject'])) && ($_POST['subject'] != "")) 
            $subject = $_POST['subject'];
        else 
            $subject = "";

        if((isset($_POST['option'])) && ($_POST['option'] != "")) 
            $option = $_POST['option'];
        else 
            $option = "";

        if((isset($_POST['crs'])) && ($_POST['crs'] != "")) 
            $crs = $_POST['crs'];
        else 
            $crs = "";

        if((isset($_POST['plname'])) && ($_POST['plname'] != "")) 
            $plname = $_POST['plname'];
        else 
            $plname = "";
            

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

        <div class="table-title">
            <h5>SEARCH CONDITION</h5>
        </div>
            
        <form method="post" action="user-search-result.php">
            <table class="table table-borderless-small">
                <tbody>
                    <tr>
                    <td><label for="classid">COURSE ID</label></td>
                    <td><input type="text" name="classid" id="classid" placeholder="" ></td>
                    </tr>
                    <tr>
                    <td><label for="subject">SUBJECT</label></td>
                    <td><input type="text" name="subject" id="subject" placeholder="" ></td>

                    <td><label for="cnum">COURSE NUM</label></td>
                    <td>
                    <div style="height: 50px;">
                        <select name="option" id="option" required>
                            <option value=0>is less than or equal to</option>
                            <option value=1>is exactly</option>
                            <option value=2>is greater than or equal to</option>
                        </select>
                    </div>
                    </td>
                    <td><input type="text" name="crs" id="cnum" placeholder="" ></td>

                    </tr>
                    <tr>
                    <td><label for="plname">PROFESSOR</label></td>
                    <td><input type="text" name="plname" id="plname" placeholder="Last Name" ></td>
                    </tr>

                </tbody>
            </table>

            <?php     
                $sem = $_POST['semester'];
                $semester = $sem[0];
                //echo $semester;

                $_SESSION["semester"] = $semester;
            ?>

            <div class="table-title">
            <h5>SBC REQUIREMENT</h5>
            </div>
            <table class="table table-borderless">
                
                <tbody>
                    <tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="EXP+" id="exp">
                          <label class="custom-control-label" for="exp">EXP+</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="WRTD" id="wrtd">
                          <label class="custom-control-label" for="wrtd">WRTD</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="SPK" id="spk">
                          <label class="custom-control-label" for="spk">SPK</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="ESI" id="esi">
                          <label class="custom-control-label" for="esi">ESI</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="SNW" id="snw">
                          <label class="custom-control-label" for="snw">SNW</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="SBS+" id="sbs+">
                          <label class="custom-control-label" for="sbs+">SBS+</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="CER" id="cer">
                          <label class="custom-control-label" for="cer">CER</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="TECH" id="tech">
                          <label class="custom-control-label" for="tech">TECH</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="QPS" id="qps">
                          <label class="custom-control-label" for="qps">QPS</label>
                        </div>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="HFA+" id="hfa+">
                          <label class="custom-control-label" for="hfa+">HFA+</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="GLO" id="glo">
                          <label class="custom-control-label" for="glo">GLO</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="STEM+" id="stem+">
                          <label class="custom-control-label" for="stem+">STEM+</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="ARTS" id="arts">
                          <label class="custom-control-label" for="arts">ARTS</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="ART" id="art">
                          <label class="custom-control-label" for="art">ART</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="STAS" id="stas">
                          <label class="custom-control-label" for="stas">STAS</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="LANG" id="lang">
                          <label class="custom-control-label" for="lang">LANG</label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" name="sbc_list[]" class="custom-control-input" value="HUM" id="hum">
                          <label class="custom-control-label" for="hum">HUM</label>
                        </div>
                    </td>
                    
                    </tr>
                </tbody>
            </table>
            <a href="user-search-result.php">
                <input name="search" type="submit" class="search-button" value="SEARCH">
            </a>
        </form>

        <!--<?php
            if(isset($_POST['search'])){//to run PHP script on submit
                if(!empty($_POST['sbc_list'])){
                // Loop to store and display values of individual checked checkbox.
                    foreach($_POST['sbc_list'] as $selected){
                        echo $selected.",";
                    }
                }
            }
        ?>-->

            
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