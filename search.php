<?php
    $connect = mysqli_connect("localhost","root","","defeatstarvation2");
    if(isset($_POST["query"]))
    {
        $output = '';
        $query = "SELECT * FROM cust_reg WHERE mobile_no LIKE '%".$_POST["query"]."%'";
        $result = mysqli_query($connect, $query);
        $output = '<ul class="list-unlisted">';
        if(mysqli_num_rows($result) > 0)
        {
            while($row = mysqli_fetch_array($result))
            {
                $output .= '<li>'.$row["Name"].'</li>';
            }
        }
        else
        {
            $output .= '<li>name not found</li>';
        }
        $output .= '</ul>';
        echo $output;
    }
?>