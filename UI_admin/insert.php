<?php  
 $connect = mysqli_connect("localhost", "root", "", "defeatstarvation2");  
 $sql = "INSERT INTO price_tag(product, rate) VALUES('".$_POST["product"]."', '".$_POST["rate"]."')";  
 if(mysqli_query($connect, $sql))  
 {  
      echo 'Data Inserted';  
 }  
 ?> 
