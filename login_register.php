<?php
if (is_file('config.php')) {
        require_once('config.php');
}
//set charset
ini_set("default_charset",'utf-8');//utf-8 windows-1251
ini_set('display_errors', 1);
error_reporting('E_ALL');

//session_start();
//$_SESSION['login']='hw';
//if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $email = test_input($_POST["email"]);
  $password = test_input($_POST["password"]);
//}
function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

$conn = mysqli_connect($DB_HOSTNAME, $DB_USERNAME, $DB_PASSWORD, $DB_DATABASE, $DB_PORT);
if (mysqli_connect_errno()) {
    die("Failed to connect to MySQL: " . mysqli_connect_error());
}
/* change character set to utf8 */
if (!mysqli_set_charset($conn, "utf8")) {
  //  printf("Error loading character set utf8: %s\n", mysqli_error($conn));
    exit();
} else {
  //  printf("Current character set: %s\n", mysqli_character_set_name($conn));
}

$query_line = "SELECT 
 * 
 FROM accounts
 WHERE email = '".$email."'";
//echo $query_line."<br>";
$query = mysqli_query($conn, $query_line) or die("Query error: ".mysqli_error());

$field = mysqli_field_count($conn);
//echo $field."<br>";
// create line with field names
//create 
// loop through database query and fill export variable

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

if ($account_found == false) {
    $query_line = "INSERT INTO 
     accounts (email, passwordh) VALUES 
     ('".$email."','".md5($password)."');";
     echo $query_line;
    $result = mysqli_query($conn, $query_line) or die("Query error: ".mysqli_error());
    
    /*
    $stmt = mysqli_prepare($link, $query);
	mysqli_stmt_bind_param($stmt, "sss", $val1, $val2, $val3);
	$val1 = 'abc';
	$val2 = 'cde';
	$val3 = 'qwe';
	mysqli_stmt_execute($stmt);
    */
    
	//session start, redirect to char selection screen
}
if ($account_found = true) {
  /*
  check password 
    if passord correct
      session start, redirect to char selection screen
    else    
      redirect to passrestore page
  */        
}
?>
