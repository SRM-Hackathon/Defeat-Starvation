<?php  
 $connect = mysqli_connect("localhost", "root", "", "defeatstarvation2");  
 $output = '';  
 $sql = "SELECT * FROM price_tag ORDER BY id ASC";  
 $result = mysqli_query($connect, $sql);  
 $output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered">  
                <tr>  
                     <th width="10%">id</th>  
                     <th width="40%">product</th>  
                     <th width="40%">rate</th>  
                     
                </tr>';  
 if(mysqli_num_rows($result) > 0)  
 {  
      while($row = mysqli_fetch_array($result))  
      {  
           $output .= '  
                <tr>  
                     <td>'.$row["id"].'</td>  
                     <td class="product" data-id1="'.$row["id"].'" contenteditable>'.$row["product"].'</td>  
                     <td class="rate" data-id2="'.$row["id"].'" contenteditable>'.$row["rate"].'</td>  
                     <td><button type="button" name="delete_btn" data-id3="'.$row["id"].'" class="btn btn-xs btn-danger btn_delete">x</button></td>  
                </tr>  
           ';  
      }  
      $output .= '  
           <tr>  
                <td></td>  
                <td id="product" contenteditable></td>  
                <td id="rate" contenteditable></td>  
                <td><button type="button" name="btn_add" id="btn_add" class="btn btn-xs btn-success">+</button></td>  
           </tr>  
      ';  
 }  
 else  
 {  
      $output .= '<tr>  
                          <td colspan="4">Data not Found</td>  
                     </tr>';  
 }  
 $output .= '</table>  
      </div>';  
 echo $output;  
 ?>