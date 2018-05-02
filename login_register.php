<?php
if (is_file('config.php')) {
        require_once('config.php');
}
//set charset
ini_set("default_charset",'utf-8');//utf-8 windows-1251
ini_set('display_errors', 1);

//session_start();
//$_SESSION['login']='hw';
//if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $email = test_input($_POST["email"]);
  $gender = test_input($_POST["password"]);
//}
function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

$conn = mysqli_connect($DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE, DB_PORT);
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
 FROM seabattles
 WHERE (oc_product.manufacturer_id = 15 ||
 oc_product.manufacturer_id = 17 ||
 oc_product.manufacturer_id = 16) &&
 oc_product.product_id > ".$LowBorder." && oc_product.product_id < ".$HighBorder. 
 "&& oc_product.status = 1 
 ORDER BY oc_product.product_id";
// oc_product.product_id > ".$LowBorder." && oc_product.product_id < ".$HighBorder.
//echo $query_line;
echo "<html><body>";
$query = mysqli_query($conn, $query_line);
$field = mysqli_field_count($conn);
// create line with field names
//create 
// loop through database query and fill export variable
$MyArrayOfAvailItems=array();
echo "all items in range from your store"."<br>";
while($row = mysqli_fetch_array($query)) {
    // create line with field values
	//echo "HW";
    for($i = 0; $i < $field; $i++) {
		if ($i==1) {
			$model_id	= $row[mysqli_fetch_field_direct($query, $i)->name];
			echo $model_id;
			echo '
					';            
			array_push($MyArrayOfAvailItems, $model_id);	
		}
	}	
}

if doesn't exist
  create new user    
if exists     
  check password 
    if passord correct
      login
    else    
      redirect to passrestore page
        
?>
