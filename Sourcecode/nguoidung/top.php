<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table cellpadding="0" cellspacing="0" width="1000">
<tr height="200" bgcolor="#003300">
<td colspan="7">
<table height="200" width="1000" cellspacing="0">

<tr height="20" bgcolor="003300" align="center">
	<td width="850">
    <marquee behavior="scroll"  width="750px;" align="absmiddle">
<span style="color: white; ">Chào mừng bạn đến với web xem phim xemphimpro.vn</span>
</marquee>
</td>
<td>
    	<div align="right">
<?php
error_reporting(E_ERROR | E_PARSE);
session_start();
if(isset($_SESSION['username']))
{
echo "Chào &nbsp;".$_SESSION["username"]; echo "&nbsp;&nbsp;";
echo "<a href=\"logout.php\">Thoát</a>";
}
else
{
echo "<a href=\"index.php?id=dangnhap\"style=\"width:100px; height:20; border:solid 1px #0099CC;color:white;background:blue;border-radius:3px;\">Đăng nhập</a>";echo "&nbsp;&nbsp;";
echo "<a href=\"index.php?id=dangky\" style=\"width:100px; height:20; border:solid 1px #0099CC;color:white;background:blue;border-radius:3px;\">Đăng ký</a>";
}
?>
</div>
    </td>
</tr>
<tr>
<td colspan="7">
<img src="banner/banner 2.jpg" height="296" width="1000"  alt=""/>
</td></tr>
</table>
</td>
</tr>

<tr height="34" bgcolor="#009900">
<td colspan="5">
<table width="1000" height="34" cellpadding="0" cellspacing="0">
<tr align="left" >
<td valign="top" align="left" width="10">
	<a href="index.php"><img src="images/trang chu.jpg" height="34" width="60"/> </a>
</td>
<td valign="top" align="left" width="10">
	<a href="index.php?id=phimbo"><img src="images/phim bo.jpg" height="34" width="90" /></a>
</td>
<td valign="top" align="left" width="10">
	<a href="index.php?id=phimle"><img src="images/phim le.jpg" height="34" width="90"/></a>
</td>
<td valign="top" align="left" width="10">
	<a href="index.php?id=xemnhieu"><img src="images/xem nhieu.jpg" height="34" width="90" /></a>
</td>
<td valign="top" align="left" width="10">
	<a href="index.php?id=lienhe"><img src="images/lienhe.jpg" height="34" width="90" /></a>
</td>
<td valign="top" align="right" width="400" height="34">
    <input type="text" placeholder="Tìm kiếm" name="timkiem" />
    <a href="index.php"><input type="submit" value="Tìm" name="tim" /></a>
    </form>	
</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
