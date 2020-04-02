<?php include "db.php"; ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
h2 .f{

  font-family: sans-serif;
  font-size: 30px;
  color : RED;

}

body {
  margin: 0 auto;
  max-width: 800px;
  padding: 0 20px;
}

.container1 {
  border: 2px solid #dedede;
  background-color: #f1f1f1;
  border-radius: 5px;
  padding: 10px;
  margin: 10px 0;
}

.darker {
  border-color: #ccc;
  background-color: #ddd;
}

.container1::after {
  content: "";
  clear: both;
  display: table;
}

.container1 img {
  float: left;
  max-width: 50px;
  width: 100%;
  margin-right: 20px;
  border-radius: 50%;
}

.container1 img.right {
  float: right;
  margin-left: 20px;
  margin-right:0;
}

.time-right {
  float: right;
  color: #aaa;
}

.time-left {
  float: left;
  color: #999;
}

div.sticky {
  position: -webkit-sticky;
  position: sticky;
  bottom: 0;
  margin-top: 200px;
  background-color: #ddd;
  padding: 10px 0 0 10px;
  font-size: 20px;
}
.square {
  height: auto;
  width: 810px;
  padding: 8px;
  background-color: #78b1e3;
  border: 2px solid #dedede;
 
}
</style>
</head>
<body style="background-color:#34eb9b;">

<span id="ref">
<div class="square">
<img src="img/clglogo1.png" width="790px" hight="40px">
<!---<center><h2 style="font-family:Helvetica; font-size:50px; border-bottom: 4px solid BLACK;">LDCE BOT</h2></center>-->
<br/>
  <?php
    $query="select * from chats ORDER by date DESC";
    $res=mysqli_query($conn,$query);
    while($data=mysqli_fetch_array($res)){
      $user=$data['user'];
      $chatbot=$data['chatbot'];
      $date=$data['date'];
      $timestamp = strtotime($date);
      
      $action=$data['action'];

      $child1 = date('n.j.y',$timestamp);
      $child2 = date('g:i.a',$timestamp);

  ?>

    <?php if($action=='text'){ ?>

      <div class="container1 darker" style="margin-right: 400px;">
    <img src="img/chatbot.png" alt="Avatar" class="right" style="width:100%;">
    <p><?php echo $chatbot;?></p>
    <span class="time-right"><?php echo $child2;?></span>
  </div>

  <div class="container1" style="margin-left: 400px;">
    <img src="img/user.png" alt="Avatar" style="width:100%;">
    <p id="message"><?php echo $user;?></p>
    <span class="time-left"><?php echo $child2;?></span>
  </div>

    <?php }else{ ?>
  <div class="container1 darker" style="margin-right: 400px;">
    <img src="img/chatbot.png" alt="Avatar" class="left" style="width:100%;">
    <p><?php echo $chatbot; ?></p>
    <span class="time-right"><?php echo $child2;?></span>
  </div>

  <div class="container1" style="margin-left: 400px;">
    <img src="img/user.png" alt="Avatar" class="right" style="width:100%;">
    <p id="message" ><?php echo $user;?></p>
    <span class="time-left"><?php echo $child2;?></span>
  </div>

    <?php } ?>



<?php } ?>
<div class="sticky">
  <div class="row">
     <div class="col-md-12">
       <div class="input-group mb-3">
          <input type="text" class="form-control" id="msg">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button" onclick="send()">Send</button>
            </div>
        </div>
   </div>
  </div>
</div>
</div>
</span>
<br/>

<script type="text/javascript">
  function send(){
    var text=$('#msg').val().toLowerCase();
   
     $.ajax({
                type:"post",
                url:"mysearch.php",
                data:{text:text},
                success:function(data){
                    //alert(data);
                    $('#ref').load(' #ref');
                }
      });
  }
</script>

</body>
</html>

