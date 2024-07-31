<?php 
include("config.php");
session_start();

if (isset($_POST['login'])) {
    $user = $_POST['user'];
    $inputPassword = $_POST['password'];

    $query = "SELECT aid, name, password FROM `admin` WHERE name = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "s", $user);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);
        $storedHashedPassword = $row["password"];

        if (password_verify($inputPassword, $storedHashedPassword)) {
            $_SESSION['auser'] = $row['name'];
            $_SESSION['aid'] = $row['aid'];
            header("Location: dashboard.php");
            exit;
        } else {
            $_SESSION['message'] = "* Invalid Password";
            header('location: index.php');
            exit;
        }
    } else {
        $_SESSION['message'] = "* Invalid User Name";
        header('location: index.php');
        exit;
    }
}
?>
