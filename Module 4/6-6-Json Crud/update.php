<?php

    include('connect.php');

    $id=$_POST["id"];
    $name=$_POST["p_name"];
    $price=$_POST["p_price"];
    $des=$_POST["p_des"];
    
    
    $sql="Update product_info set p_name='$name',p_price='$price',p_des='$des' where id='$id'";
    
    if(mysqli_query($con,$sql))
    {
          echo 'Record Updated Succesfully';
    }
    else
    {
         echo 'Something went Wrong';
    }



?>