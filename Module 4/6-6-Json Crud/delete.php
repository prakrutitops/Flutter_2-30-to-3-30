<?php

    include('connect.php');
    
    $id = $_POST["id"];

    $sql = "delete from product_info where id = '$id'";
    
    if(mysqli_query($con,$sql))
    {
         echo 'Record Deleted Succesfully';
    }
    else
    {
         echo 'Something went Wrong';
    }

?>