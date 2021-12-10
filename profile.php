<?php
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
    header('Location: index.html');
    exit;
}

$dbhost = 'localhost';
$dbuser = 'root';
$dbpassword = '';
$dbname = 'login';
// connect to the database
$connect = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
if (mysqli_connect_errno()) {
    exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}

$statement = $connect->prepare('SELECT password, email FROM accounts WHERE id = ?');
// Using the account ID to get the account info.
$statement->bind_param('i', $_SESSION['id']);
$statement->execute();
$statement->bind_result($password, $email);
$statement->fetch();
$statement->close();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Profile</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
</head>
<body class="loggedin">
<nav class="navtop">
    <div>
        <h1>RHIASYS MANAGER</h1>
        <a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
        <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
    </div>
</nav>
<div class="content">
    <h2>PROFILE</h2>
    <div>
        <p>Your account details are below:</p>
        <table>
            <tr>
                <td>Username:</td>
                <td><?=$_SESSION['name']?></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><?=$password?></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><?=$email?></td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
