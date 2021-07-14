<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
error_reporting(E_ERROR | E_PARSE);
session_start();
if(!isset($_SESSION)) 
header('location:index.php');
include "conn.inc.php";
?>
<form name="f" action="index.php?id=themtheloai2" method="post">
<table  align="center" width="500" border="1" bordercolor="#bbbbbb" cellpadding="1" cellspacing="1" >
  <tr id="tieude"><td align="center" colspan="2" > <strong>Thêm thể loại phim:</strong></td>
   </tr>
                    
	<tr>
    <td>Tên thể loại: </td><td><input type="text" name="tentl" /></td>
    </tr>
    <tr><td></td><td><input type="submit" name="submit"  value="Them"/>
 <a href="index.php?id=quanlytl"><input type="button" value="Quay lai" name="back" /></a></td>
 	</tr>
 </table>
</form>
</body>
</html>
