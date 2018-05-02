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
echo $query_line."<br>";
$query = mysqli_query($conn, $query_line) or die("Query error: ".mysqli_error());

$field = mysqli_field_count($conn);
echo $field."<br>";
// create line with field names
//create 
// loop through database query and fill export variable


while($row = mysqli_fetch_array($query)) {
    for($i = 0; $i < $field; $i++) {
		if ($i==1) {
			$pass_from_db = $row[mysqli_fetch_field_direct($query, $i)->name];
			echo $pass_from_db;
			echo '
					';            
			
		}
	}	
}

/*
if result is zero and thus user doesn't exist
   create new user with provided email and pass
if exists     
  check password 
    if passord correct
      login
    else    
      redirect to passrestore page
*/        
?>
