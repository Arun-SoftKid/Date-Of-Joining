<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Date of Joining</title>

<script>

function myFunction() {
    var a = document.forms["search"]["id"].value;
  
    if (a == "" ) {
      error = "please enter id";
      document.getElementById("errorid").innerHTML = error;
      return false;
    }
    return true;
  }

</script>

</head>
<body>
<center><h1>date of joining search by user Id</h1>
<form name="search" action="dataSelect" method="post">
<table style="margin-top: 100px">
<tr>
<td><lable>Employee Id :*</lable></td><td><input id="searchid" type="text" name="id" placeholder="id"></td></tr>
</table><br><p id="errorid"></p>
<input  type="submit" value="submit" onclick="return myFunction()">

</form>
</center>
</body>
</html>