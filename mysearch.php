<?php
include"db.php";
  
$server_time=date("Y-m-d H:i:s");

if(isset($_POST['text'])){

$msg=mysqli_real_escape_string($conn,$_POST["text"]);
if($msg=="jokes")
{
    $random =rand(1,25);
    echo $random;
    $query=mysqli_query($conn,"SELECT joke FROM jokes where id = $random ");
    $count = mysqli_num_rows($query);
   // $random=array_rand($count,10);  
   if($count=="0"){
          
            $data = "I am Sorry but I am not exactly clear how to help you";
            $query4=mysqli_query($conn,"insert into chats(user,chatbot,date)values('$msg','$data','$server_time')");
          
        }else{
            while($row = mysqli_fetch_array($query)){
                  
                    $data= $row['joke'];
                  
                    $query4=mysqli_query($conn,"insert into chats(user,chatbot,date)values('$msg','$data','$server_time')");
                }
            }
      
}
elseif($msg=="syllabus")
{
// done using database eval!!
}
else
{
$query=mysqli_query($conn,"SELECT * FROM question WHERE question RLIKE '[[:<:]]".$msg."[[:>:]]'");
$count = mysqli_num_rows($query);

    if($count=="0"){
      
        $data = "I am Sorry but I am not exactly clear how to help you";
        $query4=mysqli_query($conn,"insert into chats(user,chatbot,action,date)values('$msg','$data','text','$server_time')");
      
    }else{
        while($row = mysqli_fetch_array($query)){
              
                $data= $row['answer'];
                $action = $row['action'];
                $query4=mysqli_query($conn,"insert into chats(user,chatbot,action,date)values('$msg','$data','$action','$server_time')");
            }
        }
    }
}  
?>
