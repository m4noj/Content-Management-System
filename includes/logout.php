<?php session_start(); ?>
<?php
	$_SESSION['username'] = null;
	$_SESSION['firstname'] = null;
	$_SESSION['lastname'] = null;
	$_SESSION['user_role'] = null;	
session_unset();
session_destroy();
header("Location: ../index.php");
exit();
?>