<?php
    
    include('connect.php');
    
    $sql ="select * from contact";
    
    $r = mysqli_query($con,$sql);
    $response = array();
    
    while($data = mysqli_fetch_array($r))
    {
        $data2["id"] =$data["id"];
        $data2["name"] =$data["name"];
        $data2["surname"] =$data["surname"];
        $data2["email"] =$data["email"];
        
         array_push($response,$data2);
    }
    
   
    echo json_encode($response);
    mysqli_close($con);
    
    

?>