<?php
//if (!isset($_SESSION['loggedin'])) {
//    // If the user is not logged in
//    header('Location:dashboard.html');
//    exit;
//}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Dashboard</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
    </head>

    <body class="loggedin">
        <nav class="navtop">
            <div>
                <h1>RHIASYS MANAGER</h1>
                <a href="profile.php"><i class="fas fa-user-circle"></i> Profile </a>
                <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Logout </a>
            </div>
        </nav>

        <div id="menu">
            <ul>
                <li><a href="inventory.php" <?php if ($_GET['currentPage'] == 'inventory') echo 'class="active"';?>> Inventory </a></li>
                <li><a href="equipment.php" <?php if ($_GET['currentPage'] == 'equipment') echo 'class="active"';?>> Equipment </a></li>
                <li><a href="branches.php" <?php if ($_GET['currentPage'] == 'branches') echo 'class="active"';?>> Branches </a></li>
                <li><a href="suppliers.php" <?php if ($_GET['currentPage'] == 'suppliers') echo 'class="active"';?>> Suppliers </a></li>
                <li><a href="payments.php" <?php if ($_GET['currentPage'] == 'payments') echo 'class="active"';?>> Payments </a></li>
                <li><a href="employees.php" <?php if ($_GET['currentPage'] == 'employees') echo 'class="active"';?>> Employees </a></li>
            </ul>
        </div>
    </body>
</html>
