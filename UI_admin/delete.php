<?php  
 $connect = mysqli_connect("localhost", "root", "", "defeatstarvation2");  
 $sql = "DELETE FROM price_tag WHERE id = '".$_POST["id"]."'";  
 if(mysqli_query($connect, $sql))  
 {  
      echo 'Data Deleted';  
 }  
 ?>