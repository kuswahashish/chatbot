
<?php

$servername="localhost";
$username="root";
$password="";
$dbname="chatbot";

$server_time=date("Y-m-d H:i:s");

$conn=new mysqli($servername,$username,$password,$dbname);

if($conn){

    echo "";

}else{

    echo "Failed to Connect";
}

?>