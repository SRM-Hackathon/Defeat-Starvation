<?php

   $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "defeatstarvation";
	$conn = mysqli_connect($servername,$username,$password,$dbname);
	
    if ($conn->connect_error) 
    {
    die("Connection failed: " . $conn->connect_error);
    } 
  
	
	if(isset($_POST["add_vendor"]))
	   { 
		$name =$_POST['name'];
		$mobno =$_POST['mobno'];
		$email =$_POST['email'];
	
			
		
				$sql = "insert into cust_reg (Name,mobile_no,email_id) values('$name','$mobno','$email')";
			   
      		
               if ($conn->query($sql) === TRUE) 
               {
                   echo "<h1>Registation Successfully done...</h1>";
               /*    $last_id = $conn->insert_id;
                   echo "New record created successfully. Last inserted ID is: " . $last_id;
               */    
               } else 
                    {
                        echo "<h1>Failed User already exist...</h1>";
                        
                 //  echo "Error: " . $sql . "<br>" . $conn->error;
                    }

                $conn->close();

                
			
	   }	
	  header("refresh:2; url=index.html");
?>
