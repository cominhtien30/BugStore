<?php ob_start();
 include 'inc/header.php';

?>
<?php 
     if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['code'])){  
     $code=$_POST['code'];
     $newpass=$_POST['newpass'];
     //echo($email);     
       $changepassword=$user->changePass($code,$newpass);
    
    }

 ?>

<form action="" method="post">
  <div class="imgcontainer">
   <h2>Xác Nhận Đổi Mật Khẩu</h2>
  </div>

  <div class="container">


    <label for="psw"><b>Code</b></label>
    <input type="text" placeholder="Nhập Code" name="code" required >
     <label for="psw"><b>New Password</b></label>
    <input type="password" placeholder="Nhập Mật  Khẩu Mới" name="newpass" required>
    <button onclick="" type="submit">Đồng Ý</button>
    <?php 
      if (isset($changepassword)) {
        echo $changepassword;
      }else{
        echo'<h4 class="psw text-success">Đã gửi mail vui lòng kiểm tra hộp thư </h4>'; 

      }
     ?>
   
  </div>
    
  
</form>


<style type="text/css" media="screen">
		/* Bordered form */
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #ff3300 ;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
  width: 40%;
  border-radius: 50%;
}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}	
</style>

<?php 	
		 include 'inc/footer.php';
 ob_end_flush();
 ?>
 ?>