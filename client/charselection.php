<?php
//PROCESSING
session_start();
$mylogin = $_SESSION['login'];
$query_line = "SELECT 
 * 
 FROM accounts
 WHERE email = '".$email."'";

$query = mysqli_query($conn, $query_line) or die("Query error: ".mysqli_error());

$field = mysqli_field_count($conn);

$account_found = false;
while($row = mysqli_fetch_array($query)) {
	for($i = 0; $i < $field; $i++) {
		if ($i==2) {
			$pass_from_db = $row[mysqli_fetch_field_direct($query, $i)->name];
			$account_found = true;
			echo 'account is found!';
		}
	}	
}

//PAGE OUTPUT
echo "<html>";
echo	"<head>";
echo	"<title>Seabattles</title>";
echo	"<link rel='icon' href='favicon.ico' type='image/x-icon'/>";
echo	"<!-- type='image/ico' -->";
echo	"<link rel='shortcut icon' href='favicon.ico' type='image/x-icon'/>";
echo	"</head>";
echo	"<script>";
echo	"</script>";
echo	"<body>";
echo		"char selection form<br><br>";
echo        $mylogin;
echo		"<div id='test'>empty</div>";
echo	"</body>";
echo "</html>";
?>
