<?php
$mysqli = new mysqli("localhost","root","matkhaunhucu789","hatdieu");
  

// ip-protection in seconds
$counter_expire = 600;

// ignore agent list
$counter_ignore_agents = array('bot', 'bot1', 'bot3');

// ignore ip list
$counter_ignore_ips = array('127.0.0.2', '127.0.0.3');

// get basic information
$counter_agent = $_SERVER['HTTP_USER_AGENT'];
$counter_ip = $_SERVER['REMOTE_ADDR']; 
$counter_time = time();

// connect to database
$counter_connected = true;

if ($counter_connected == true) 
{
   $ignore = false; 
   
   // get counter information
   $sql = "SELECT * FROM counter_values LIMIT 1";
   $res = $mysqli->query($sql);
   
   // fill when empty
   if (mysqli_num_rows($res) == 0)
   {	  
	  $sql = "INSERT INTO `counter_values` (`id`, `day_id`, `day_value`, `all_value`) VALUES ('1', '" . date("z") . "',  '1', '1')";
	  $mysqli->query($sql);

	  // reload with settings
	  $sql = "SELECT * FROM counter_values LIMIT 1";
      $res = $mysqli->query($sql);
	  
	  $ignore = true;
   }   
   $row = mysqli_fetch_assoc($res);
   
   $day_id = $row['day_id'];
   $day_value = $row['day_value'];   
   $all_value = $row['all_value'];   
   
   // check ignore lists
   $length = sizeof($counter_ignore_agents);
   for ($i = 0; $i < $length; $i++)
   {
	  if (substr_count($counter_agent, strtolower($counter_ignore_agents[$i])))
	  {
	     $ignore = true;
		 break;
	  }
   }
   
   $length = sizeof($counter_ignore_ips);
   for ($i = 0; $i < $length; $i++)
   {
	  if ($counter_ip == $counter_ignore_ips[$i])
	  {
	     $ignore = true;
		 break;
	  }
   }
   
      
   // delete free ips
   if ($ignore == false)
   {
   	$time = time();
   	$sql = "SELECT visit FROM counter_ips WHERE ip = '127.0.0.1'";
   	$rs= $mysqli->query($sql);
   	$row = mysqli_fetch_assoc($rs);
      $sql = "DELETE FROM counter_ips WHERE $time-visit >= $counter_expire"; 
      $mysqli->query($sql);	  
   }
 
   // check for entry
   if ($ignore == false)
   {
   	$time = time();
     
	 	$sql = "SELECT visit FROM counter_ips WHERE ip = '$counter_ip'";
   		$rs= $mysqli->query($sql);
	  
	  if (mysqli_num_rows($rs) > 0)
	  {
	 	$sql = "update counter_ips set visit = $time where ip = '$counter_ip'";
	 	$mysqli->query($sql) or die(mysql_error());	  	
		$ignore = true;						   		 
	  }
	  else
	  {
		 // insert ip
	     $sql = "INSERT INTO counter_ips (ip, visit) VALUES ('$counter_ip', $time)";
   	     $mysqli->query($sql) or die(mysql_error()); 
	  }	  	  
   }
       
   // online?
   $sql = "SELECT * FROM counter_ips";
   $res = $mysqli->query($sql);
   $online = mysqli_num_rows($res);
      
   // add counter
   if ($ignore == false)
   {    	  
      
	  
	  // day
	  if ($day_id == date("z")) 
	  {
	     $day_value++; 
	  }
	  else 
	  {
	     $day_value = 1;
		 $day_id = date("z");
	  }

	  // all
	  $all_value++;
	
		 
	  // speichern und aufräumen
	  $sql = "UPDATE counter_values SET day_id = '$day_id', day_value = '$day_value', all_value = '$all_value' WHERE id = 1";
	  $mysqli->query($sql);  	  
   }	  
	  	
?>
<?php
}
?>
