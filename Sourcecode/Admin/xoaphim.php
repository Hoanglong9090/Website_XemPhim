<!DOCTYPE html >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
     include "conn.inc.php";
	$tp=$_GET["tenphim"];
     $query_delete = "DELETE FROM tenphim WHERE tenphim = '$tp'";
     $result_delete = mysqli_query($conn,$query_delete) or die(mysqli_error($conn));
	 if($result_delete)  header("Location:index.php?id=quanlyphim");
	 else echo "Có lỗi";
     header("Refresh: 5; URL=list_user.php");
          echo "Bạn đang được chuyển đến trang chủ!<br>";
          echo "(Nếu trình duyệt không hỗ trợ, <a href=\"index.php?id=quanlytl\">Nhấn vào đây</a>)";
     die();

?>
</body>
</html>
