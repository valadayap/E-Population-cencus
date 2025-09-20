 


<!DOCTYPE html>
<html>
<head>
    <title>Census Registration</title>
    <link rel="stylesheet" href="style1.css">
    		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
         <style>
        .logo {
      width: min(150%, 150px);
      height: auto;
      display: block;
    }

    </style>

</head>
<body>
<div class="container">
   <form action="reg.php" method="POST">
       <center> 
        <div class="logo">

          <!-- //  <span class="logo-icon"></span> -->
           <img  class="logo" src="cencus_logo.jpg" alt="Census Government App logo" /> 
        </div>
        </center>
        

        <input type="text"  placeholder="First Name" id="getname" name="txt_fn" >
        <div id="checkname" class="error"></div>

        <input type="text"  placeholder="Last Name"  id="getlastname" name="txt_ln">
         <div id="checklastname" class="error"></div>

        <div class="gender"  id="getgender" >
            <label><input type="radio" name="gender" value="Male" checked> Male</label>
            <label><input type="radio" name="gender" value="Female"> Female</label>
        </div>
          <div id="checkgender" class="error"></div>

        <input type="email" id="getemail" placeholder="Email" name="email">
         <div id="checkemail" class="error"></div>

        <input type="text" id="getphone" placeholder="Phone Number" name="phone">
          <div id="checkphone" class="error"></div>

        <input type="password" id="getpass" placeholder="password" name="password">
          <div id="checkpass" class="error"></div>
        <input type="password" id="getcpass" placeholder=" confirm Password" name="conf_password">
          <div id="checkcpass" class="error"></div>
         <!-- <input type="text"  placeholder="Select Language" id="language">
		
		 
  <div class="modal-overlay" id="modal">
   <div class="modal-box"> 
      <div class="close-btn" id="closeModalBtn">&times;</div> 
    <h2>Select language</h2> 
	      <div class="lang"  id="getlang">
		  
            <label>gujrati <input type="radio" name="clanguage" value="gujrati" checked> </label><br><hr>
            <label>hindi     &nbsp;&nbsp;<input type="radio" name="clanguage" value="hindi"> </label>
        </div>  -->


          <button class="regc" id="regid" name="regiter">register</button>
        <div class="inputreg" style="display:none">
            <input type="submit" id="regi" name="submit" >
       

    </form>
</div>
 
</body>
</html>
<?php
   include 'conphp.php';
  if(isset($_POST['regiter']))
  {
      $fn=$_POST['txt_fn'];
      $ln=$_POST['txt_ln'];
      $email=$_POST['email'];
          $gender=$_POST['gender'];
      $p=$_POST['password'];
      $cp=$_POST['conf_password'];
     
            $check = mysqli_query($conn, "SELECT * FROM regestion WHERE email='$email'");
            if (mysqli_num_rows($check) > 0) {
                echo "<p style='color:red'>Email already registered.</p>";
            } else {
         
                $insert = " INSERT INTO regestion (`firstname`, `lastname` ,`gender`, `email`,`password`,`config-pass` ,`language`)
                 VALUES ('$fn', '$ln', '$gender','$email', '$p','$p','$cp')";

                 
                if (mysqli_query($conn, $insert))
                 { ?>
                  <script>
                    window.location.replace("http://localhost/project%20_cencus_sem_5/first");
                  </script>  
                   
              <?php  } else {
                    echo "<p style='color:red'>Registration failed.</p>";
                }
            
  }
}


?>
