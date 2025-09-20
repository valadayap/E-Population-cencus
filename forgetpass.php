<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include 'conphp.php';

    $email = trim($_POST['email']);
    $stmt = $conn->prepare("SELECT * FROM regestion WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $res = $stmt->get_result();

    if ($res->num_rows > 0) {
        $_SESSION['reset_email'] = $email; // Store email in session
        header("Location: resetpass.php"); // Redirect to password reset form
        exit;
    } else {
        $error = "Email not found!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Forgot Password</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #fff8f0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .container {
      background: #fff;
      padding: 30px 40px;
      border: 2px solid orange;
      border-radius: 8px;
      box-shadow: 0 0 15px rgba(255, 165, 0, 0.4);
      text-align: center;
      width: 320px;
    }
    h2 {
      color: orange;
      margin-bottom: 20px;
    }
    input[type="email"] {
      width: 100%;
      padding: 12px;
      border: 2px solid orange;
      border-radius: 5px;
      font-size: 16px;
      margin-bottom: 15px;
      outline: none;
    }
    button {
      width: 100%;
      padding: 12px;
      background-color: orange;
      border: none;
      color: white;
      font-size: 18px;
      border-radius: 5px;
      cursor: pointer;
    }
    .error {
      color: red;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Forgot Password</h2>
    <form method="POST">
      <input type="email" name="email" placeholder="Enter your email" required />
      <button type="submit">Reset Password</button>
      <?php if (!empty($error)) echo "<div class='error'>$error</div>"; ?>
    </form>
  </div>
</body>
</html>
