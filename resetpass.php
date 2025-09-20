<?php
session_start();
include 'conphp.php';

if (!isset($_SESSION['reset_email'])) {
    header("Location: forgetpass.php");
    exit;
}

$email = $_SESSION['reset_email'];
$success = $error = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $newpass = $_POST['new_password'];
    $confirmpass = $_POST['confirm_password'];

    if ($newpass !== $confirmpass) {
        $error = "Passwords do not match!";
    } elseif (strlen($newpass) < 6) {
        $error = "Password must be at least 6 characters.";
    } else {
        // Update password in database
        $stmt = $conn->prepare("UPDATE regestion SET password = ?, `config-pass` = ? WHERE email = ?");
        $stmt->bind_param("sss", $newpass, $newpass, $email);
        if ($stmt->execute()) {
            $success = "Password reset successful!";
            unset($_SESSION['reset_email']);
        } else {
            $error = "Failed to update password.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Reset Password</title>
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
    input[type="password"] {
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
    .message {
      margin-top: 10px;
      font-weight: bold;
    }
    .error {
      color: red;
    }
    .success {
      color: green;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Reset Password</h2>
    <form method="POST">
      <input type="password" name="new_password" placeholder="New Password" required />
      <input type="password" name="confirm_password" placeholder="Confirm Password" required />
      <button type="submit">Reset Password</button>
      <div class="message <?php echo $error ? 'error' : ($success ? 'success' : '') ?>">
        <?php echo $error ?: $success; ?>
      </div>
    </form>
  </div>
</body>
</html>
