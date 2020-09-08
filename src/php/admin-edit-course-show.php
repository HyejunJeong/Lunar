<?php
// Initialize the session
    session_start();
    if((isset($_POST['classid'])) && ($_POST['classid'] != ""))
        $classid = $_POST['classid'];
    else
        $classid = "";

    $host = 'localhost';
    $user = 'lunar';
    $pw = 'lunar';
    $dbName = 'lunar';

    $mysqli = new mysqli($host, $user, $pw, $dbName);

    if ($mysqli->connect_error) die($mysqli->connect_error);
    //echo $classid;
    // POPULATE SBC CHECK BOX

    $sbc_list = array();

    $qry = "SELECT name FROM SBCReq";
    $full_sbc_res = $mysqli->query($qry);

    for ($i = 1; $i <= mysqli_num_rows($full_sbc_res); $i++){
      $sbc_list[$i] = '';
    }

    $days_string = array("SUN", "MON", "TUE", "WED", "THR", "FRI", "SAT");
    $days_checkbox = '';

    $sql = "SELECT * FROM Classes WHERE classid = $classid;";

    $result = $mysqli->query($sql);
    $numrows = $result->num_rows;

    if($numrows == 0) {
        $classid_exists = "NO SUCH ID EXISTS";
        $classid = $cid = $subject = $crs = $title = $credits = $cmp = $sec = $rname =
        $capacity = $pfname = $plname = $stime = $etime = $cap = $classid = $rname = $semester = "";

        for($i = 2; $i <= 7; $i++){
            $days_checkbox .=
            '<td>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="day_list[]" value="'.$i.'"" class="custom-control-input" id="'.$days_string[$i-1].'">
                    <label class="custom-control-label" for="'.$days_string[$i-1].'">'.$days_string[$i-1].'</label>
                </div>
            </td>';
        }
    }
    else {
      $classid_exists = "";
        while($row = $result->fetch_assoc()) {
            $cid = $row['cid'];
            $semester = $row['semester'];
            $cmp = $row['cmp'];
            $sec = $row['section'];
            $credits = $row['credits'];
            $rmid = $row['rmid'];
            $pid = $row['pid'];
            $cap = $row['cap'];
        }

        $sql = "SELECT * FROM Courses WHERE cid = $cid;";
        $result = $mysqli->query($sql);
        while($row = $result->fetch_assoc()) {
            $subject = $row['subject'];
            $crs = $row['crs'];
            $title = $row['title'];
        }

        $sql = "SELECT * FROM Professors WHERE pid = $pid;";
        $result = $mysqli->query($sql);
        while($row = $result->fetch_assoc()) {
            $pfname = $row['pfname'];
            $plname = $row['plname'];
        }

        $sql = "SELECT * FROM Rooms WHERE rmid = $rmid;";
        $result = $mysqli->query($sql);
        while($row = $result->fetch_assoc()) {
            $rname = $row['rnumber'];
        }

        $sql = "SELECT day, stime, etime FROM Timeslot WHERE
                slotid IN (SELECT slotid FROM ClassOfferedOn WHERE classid=$classid);";
        $result = $mysqli->query($sql);


        // POPULATE DAYS CHECKBOX
        $days = array();
        for ($i = 1; $i <= 7; $i++){
            $days[$i] = 0;
        }
        while($row = $result->fetch_assoc()) {
            $days[$row['day']] = 1;
            $stime = $row['stime'];
            $etime = $row['etime'];
        }
        $days_checkbox = '';
        for($i = 2; $i <= 7; $i++){
            $days_checkbox .=
            '<td>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="day_list[]" value="'.$i.'" '.($days[$i]===1 ? 'checked' : '').' class="custom-control-input" id="'.$days_string[$i-1].'">
                    <label class="custom-control-label" for="'.$days_string[$i-1].'">'.$days_string[$i-1].'</label>
                </div>
            </td>';
        }

        $sql = "SELECT SBCReq.sbcid, name
            FROM SBCReq, Fulfills
            WHERE SBCReq.sbcid = Fulfills.sbcid
            AND cid = $cid;";
        $result = $mysqli->query($sql);
        while($row = mysqli_fetch_assoc($result))
          {
            $sbc_list[$row['sbcid']] = $row['name'];
          }
    }




    $sbc_checkbox = '';
    $counter=0;

    while($row = mysqli_fetch_array($full_sbc_res))
    {
      if ($counter%10===0){
        $sbc_checkbox .= '<tr>';
      }
      $sbc_checkbox .= '<td>
          <div class="custom-control custom-checkbox">'
          .'<input type="checkbox" name="SBC_list[]" value='.$row['name'].' '. ($sbc_list[$counter+1]==$row['name'] ? 'checked' : '').' class="custom-control-input" id='.$row['name'].'>'
          .' <label class="custom-control-label" for="'.$row['name'].'">'.$row['name'].'</label>
          </div>
          </td>';
      if ($counter%10===9){
        $sbc_checkbox .= '</tr>';
      }
      $counter++;
    }

    // EDIT APPLY
    if($_POST && isset($_POST['classid']) && ($_POST['classid'] != "")
      && isset($_POST['semester']) && ($_POST['semester'] != "")
      && isset($_POST['subject']) && ($_POST['subject'] != "")
      && isset($_POST['crs']) && ($_POST['crs'] != "")
      && isset($_POST['cmp']) && ($_POST['cmp'] != "")
      && isset($_POST['sec']) && ($_POST['sec'] != "")
      && isset($_POST['title']) && ($_POST['title'] != "")
      && isset($_POST['stime']) && ($_POST['stime'] != "")
      && isset($_POST['etime']) && ($_POST['etime'] != "")
      && isset($_POST['pfname']) && ($_POST['pfname'] != "")
      && isset($_POST['plname']) && ($_POST['plname'] != "")
      && isset($_POST['capacity']) && ($_POST['capacity'] != "")
    ) {
      $classid = get_post($mysqli, 'classid');
      $semester = get_post($mysqli, 'semester');
      $subject = get_post($mysqli, 'subject');
      $crs = get_post($mysqli, 'crs');
      $title = get_post($mysqli, 'title');
      $cmp = get_post($mysqli, 'cmp');
      $sec = get_post($mysqli, 'sec');
      $credit = get_post($mysqli, 'credit');
      $room = get_post($mysqli, 'room');
      $pfname = get_post($mysqli, 'pfname');
      $plname = get_post($mysqli, 'plname');
      $capacity = get_post($mysqli, 'capacity');
      $stime = get_post($mysqli, 'stime');
      $etime = get_post($mysqli, 'etime');
      $sql = "CALL p_update_class($classid, '$semester', '$subject', $crs, '$title', '$cmp', '$sec', '$credit', '$room', '$pfname', '$plname', $capacity);";

      if(!empty($_POST['day_list'])) {
          $sql .= "DELETE FROM ClassOfferedOn WHERE classid=$classid;";
          foreach ($_POST['day_list'] as $selectedday) {
              $sql .= "SELECT f_set_class_time($classid, $selectedday, '$stime', '$etime');";
          }
      }
      if(!empty($_POST['SBC_list'])) {
          $selectedsbc = '"';
          foreach ($_POST['SBC_list'] as $sbc) {
              $selectedsbc .= $sbc . '","';
          }
          $selectedsbc = substr($selectedsbc, 0, -2);
          $sql .= "CALL p_set_fulfills('$subject', $crs, '$selectedsbc');";
      }

      if ($mysqli->multi_query($sql)) {
          //$query_success = "New record created successfully\n" . "$classid, '$semester', '$subject', $crs, '$title', '$cmp', '$sec', '$credit', '$room', '$pfname', '$plname', $capacity";
          $query_success = "Class Successfully Added";
      } else {
          $query_success = "Error: " . $sql . "<br>" . $mysqli->error;
      }

    }else{
      $query_success = '';
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
		<title>LUNAR: Edit Course</title>

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
							EDIT COURSE
						</h1>
					</div>
				</div>
			</div>
		</section>
		<!-- End banner Area -->

        <div class="table-title">
            <h5>EDIT THE CLASS</h5>
            <label for="classid_exists"><?php echo $classid_exists?></label>
        </div>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

        <table class="table table-borderless-small">
            <tbody>

                <tr>
                    <td><label for="classid">CLASS ID</label></td>
                    <td colspan=""><input type="text" name="classid" id="classid" value="<?php echo $classid?>" required ></td>
                    <td><label for="credit">CREDIT</label></td>
                    <td colspan=""><input type="text" name="credit" id="credit" value="<?php echo $credits?>"></td>
                </tr>

                <tr>
                    <td><label for="subject">SUBJECT</label></td>
                    <td colspan=""><input type="text" name="subject" id="subject" value="<?php echo $subject?>" required ></td>
                    <td><label for="crs">COURSE NUM</label></td>
                    <td colspan=""><input type="text" name="crs" id="crs" value="<?php echo $crs?>" required ></td>
                </tr>

                <tr>
                    <td><label for="cmp">CMP</label></td>
                    <td colspan=""><input type="text" name="cmp" id="cmp" placeholder="LEC/REC/LAB" value="<?php echo $cmp?>" required ></td>
                    <td><label for="sec">SECTION</label></td>
                    <td colspan=""><input type="text" name="sec" id="sec" value="<?php echo $sec?>" required ></td>
                </tr>

                <tr>
                    <td><label for="title">TITLE</label></td>
                    <td colspan="5"><input type="text" name="title" id="title" value="<?php echo $title?>" required ></td>
                </tr>

                <tr>
                    <td><label for="stime">START TIME</label></td>
                    <td><input type="text" name="stime" id="stime" placeholder="hh:mm" value="<?php echo $stime?>" required ></td>

                    <td><label for="etime">END TIME</label></td>
                    <td><input type="text" name="etime" id="etime" placeholder="hh:mm" value="<?php echo $etime?>" required ></td>
                </tr>

                <tr>
                    <td><label for="room">ROOM</label></td>
                    <td colspan=""><input type="text" name="room" id="room" value="<?php echo $rname?>" ></td>
                    <td><label for="capacity">CAPACITY</label></td>
                    <td colspan=""><input type="text" name="capacity" id="capacity" value="<?php echo $cap?>" required ></td>
                </tr>

                <tr>
                    <td><label for="pname">PROFESSOR</label></td>
                    <td><input type="text" name="pfname" id="pfname" placeholder="First Name"  value="<?php echo $pfname?>"></td>
                    <td><input type="text" name="plname" id="plname" placeholder="Last Name" value="<?php echo $plname?>"></td>
                </tr>
                <tr>
                    <td><label for="semester">SEMESTER</label></td>
                    <td colspan=""><input type="text" name="semester" id="semester" placeholder="" value="<?php echo $semester?>"></td>
                </tr>

            </tbody>
        </table>

        <table class="table table-borderless-small">
            <tbody>
                <tr>
                    <td><label for="day">DAYS</label></td>
                    <?php
                      echo $days_checkbox;
                     ?>
                </tr>
            </tbody>
        </table>

        <div class="table-title">
            <h5>SBC REQUIREMENT</h5>
        </div>

        <table class="table table-borderless">
            <tbody>
                <?php
                  echo $sbc_checkbox;
                ?>
            </tbody>
        </table>

        <input name="Submit" type="submit" class="search-button" value="EDIT">
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
