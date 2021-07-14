<!DOCTYPE html>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
error_reporting(E_ERROR | E_PARSE);
session_start();
if(!isset($_SESSION))
header('location:center.php'); 
?>
<h1> Chào mừng đến với xemphimpro.vn!</h1>
 
<span>Hãy bắt đầu công việc:</span><br>
 <a href="index.php?id=listuser">Quản lý người dùng</a><br />
 <a href="index.php?id=quanlyphim">Quản lý phim</a><br />
 <a href="index.php?id=quanlytl">Quản lý thể loại</a><br />
 <a href="../nguoidung/index.php">Xem trang phim</a><br />
 <a href="logout.php">Thoát</a><br />
</body>
</html>
