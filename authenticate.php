<?php
session_start();

$dbhost = 'localhost';
$dbuser = 'root';
$dbpassword = '';
$dbname = 'login';


// Establish a connection between the form and the database
$connect = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
if (mysqli_connect_errno()){
    exit('Unable to connect to the database!');
}

// Check if the data provided above exists in the database
/** @noinspection DuplicatedCode */
if (!isset($_POST['username'], $_POST['password'])) {
    // No data has been provided
    exit('Please provide both the username and password!');
}

// Preparing statement to avoid SQL injection
if ($statement = $connect -> prepare('select id, password from users where username = ?')) {
    $statement -> bind_param('s', $_POST['username']);
    $statement -> execute();

    // Store result to check if account exists
    $statement -> store_result();

    if ($statement -> num_rows > 0) {
        $statement -> bind_result($id, $password);
        $statement -> fetch();

        // If the account exists, verify the password
        if (password_verify($_POST['password'], $password)) {
            session_regenerate_id();
            $_SESSION['loggedin'] = TRUE;
            $_SESSION['name'] = $_POST['username'];
            $_SESSION['id'] = $id;
            $_SESSION['success'] = "You are now logged in";
            header('Location: branches.php');
        } else {
            // Password is incorrect
            echo 'Incorrect username and/or password!';
        }
    } else {
        // Username is incorrect
        echo 'Incorrect username and/or password!';
    }
    $statement -> close();
}