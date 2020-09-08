<?php
	// Start the session first
	session_start();
	// Remove session variables then destroy
	session_unset();
	session_destroy();
	// Redirect to the welcome page
	header("Location: index.html");
	exit();
?>