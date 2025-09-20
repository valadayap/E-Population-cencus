<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="login_style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <title>Document</title>
    <style>
        .logo {
      width: min(150%, 150px);
      height: auto;
      display: block;
    }
    #adPopup {
  display: none;
  position: fixed;
  z-index: 9999;
  top: 0; left: 0;
  width: 100%;
  height: 100%;
  background-color: transparent; /* ✅ No dark background */
  justify-content: center;
  align-items: center;
}

.popup-content {
  position: relative;
  background-color: white;
  padding: 20px 30px;
  border-radius: 10px;
  width: 80%;
  max-width: 350px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
  text-align: center;
  animation: fadeIn 0.5s ease;
}

.visit-btn {
  display: inline-block;
  margin-top: 15px;
  padding: 10px 20px;
  background-color: orange;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-weight: bold;
}

.close-btn {
  position: absolute;
  top: 10px; right: 15px;
  font-size: 20px;
  color: #888;
  cursor: pointer;
}

.close-btn:hover {
  color: #000;
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}


    </style>
</head>
<body>
<!-- 📢 Advertisement Popup -->
<div id="adPopup">
  <div class="popup-content">
    <span class="close-btn" onclick="closePopup()">×</span>
    <h2>Introducing the new Phone 16 Pro!</h2>
    <img src="purple.jpg" alt="Phone 16 Pro" style="width: 100%; height: auto; border-radius: 8px;" />
    <br><br>
    <a href="https://www.apple.com/iphone-15-pro/" target="_blank" class="visit-btn">More Details</a>
  </div>
</div>
<script>
// Show popup after 3 seconds
window.onload = function () {
  setTimeout(() => {
    document.getElementById("adPopup").style.display = "flex";
  }, 3000);
};

// Close popup when clicking X
function closePopup() {
  document.getElementById("adPopup").style.display = "none";
}
</script>


    <form  action="" method="POST">
    <div class="login-container">
         <center> 
        <div class="logo">

          <!-- //  <span class="logo-icon"></span> -->
           <img  class="logo" src="cencus_logo.jpg" alt="Census Government App logo" /> 
        </div>
        </center>

        <div class="input-group">
            <span class="material-icons"></span>
            <input type="text" placeholder="Email / Phone" id="getemail" name="email">
        
          
            
			
        </div>
              <div id="checkemaild" class="error"></div>

        <div class="input-group">
            <span class="material-icons"></span>
            <input type="password" placeholder="Password" id="getpassword" name="password">
      
            <span class="material-icons password-toggle"></span>
        </div>
      <div id="erepass" class="error"></div>
        <a href="forgetpass.php" class="forgot-password">Forget Password?</a>

        <button class="login-button" id="loginbutton">Login</button>
        <div class="inputsub" style="display:none">
            <input type="submit" id="logincu" name="submit">
</div>

        <div class="signup-text">
            Don't have an account? <a href="reg.php" class="signup-link">Signup</a>
        </div>
    </div>
</form>
<?php 

        include 'conphp.php';
        if(isset($_POST['submit']))
        {
        $password=$_POST['password'];
        $email=$_POST['email'];
       
        $sql="SELECT * FROM `regestion` WHERE `email` = '$email' AND `password` = '$password'";  
        $result=mysqli_query($conn,$sql); 
		
        if ($row = mysqli_fetch_assoc($result)) {
            if($row['admin'] == 1){
				header("Location: http://localhost/project%20_cencus_sem_5/new/");
               
				$conn->query("INSERT INTO admins (email, passw) VALUES ('$email', '$password')");
                die();
			}else
			{
			header("Location: http://localhost/project%20_cencus_sem_5/first/home_page_final.php");
               die();	
			}

			?>
              
                  

        <?php
        
        } else { ?>

            <script>
        window.location.replace("http://localhost/project%20_cencus_sem_5/first");
        </script>  
        <?php
        }
        }
?>


  




<script>
  
$(document).ready(function(){
        $("#loginbutton").click(function(){
         event.preventDefault();
	$(".error").text("");	
    var checkemail=$("#getemail").val();
     var getpassword=$("#getpassword").val();

     if(checkemail == '')
    {
    $("#checkemaild").text("Enter Email");	
    return; 
    }else
    {
var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
if (!pattern.test(checkemail)) {
      $("#checkemaild").text("Please enter a valid email address.");
       return; 
}

    }
       if(getpassword == '')
    {
    $("#erepass").text("Enter password");	
    return; 
    }

$('#logincu').trigger('click');
    // else
    // {

    // var pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    // if (!pattern.test(checkemail)) {
    //             $("#eremail").text("Please enter a valid email address.");
    //             return; 
    //         }
        
    // }
          

    });
});
</script>
</body>
</html>
