<?php

   $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "defeatstarvation2";
	$conn = mysqli_connect($servername,$username,$password,$dbname);
	
    if ($conn->connect_error) 
    {
    die("Connection failed: " . $conn->connect_error);
    } 
  
	
	if(isset($_POST["signup_btn"]))
	   { 
	//	$username =$_POST['name'];
		$email =$_POST['email'];
		$password =$_POST['password'];
		$password2 =$_POST['conformpass'];
		//$mobileno =$_POST['mobileno'];
			if($password = $password2)
			{
		//	$password =md5 ($password);
				$sql = "insert into register (email,password) values('$email' ,'$password')";
			   
      		
               if ($conn->query($sql) === TRUE) 
               {
                   $last_id = $conn->insert_id;
                   echo "New record created successfully. Last inserted ID is: " . $last_id;
               } else 
                    {
                   echo "Error: " . $sql . "<br>" . $conn->error;
                    }

                $conn->close();

                
			}
	   }	
	header("refresh:2; url=index.html");
?>



