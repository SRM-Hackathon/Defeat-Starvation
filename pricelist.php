<?php
$connect = mysqli_connect("localhost","root","","defeatstarvation2");
 $query = "SELECT * FROM price_tag";
 $result = mysqli_query($connect, $query);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Vendor</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"></script>
        <script src="http://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
         <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <h1>Defeat Starvation</h1>
        <div class="table">
            <table class="table table-stripped table-border">
                <thead>
                    <th>Product</th>
                    <th>Rate</th>
           
                </thead>
                <?php
                while($row = mysqli_fetch_array($result))
                {
                    echo '
                        <tr>
                            <td>'.$row["product"].'</td>
                           
                            <td>'.$row["rate"].'</td>
                        </tr>
                    
                    ';
                }
            ?>
            
            </table>
        </div>
    </div>
</body>

</html>