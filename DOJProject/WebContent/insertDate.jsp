<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Date of Joining</title>
<script>
function myFunction() {
    var a = document.forms["insert"]["id"].value;
    var b = document.forms["insert"]["firstname"].value;

    var c = document.forms["insert"]["dateofjoin"].value;
    if (a == "" ||b == "" ||c == "") {
      error = "please enter required fields";
      document.getElementById("errorid").innerHTML = error;
      return false;
    }
    return true;
  }
    
</script>
</head>
<body><center><h1>Enter Employee Details</h1>
	<form name="insert" action="addDate" method="post">
		<table>
			<tr>
			
				<td><lable> user Id :*</lable></td><td><input id="eid" type="text" name="id" placeholder="id" ></td>
			</tr>
			
			<tr>
				
				<td><lable> Firstname :* </lable></td><td><input id="efname" type="text" name="firstname" placeholder="firstname"></td>
			</tr>
			<tr></tr>
		
			<tr>
				
				<td><lable> Lastname :</lable></td><td><input id="elname" type="text" name="lastname" placeholder="lastname"></td>
			</tr>
			<br>
			<tr>
				
				<td><lable> DateofJoining :*</lable></td><td><input id="edoj" type="text" name="dateofjoin" placeholder="dateofjoin"></td>
			</tr>	</table>
			<br><div><p id="errorid"></p></div>
			<input onclick="return myFunction()"onclick="return myFunction()" style="height: 30px" type="submit" value="save" onclick="validate();">
	</form>
	
	<form  action="searching.jsp" method="post">
			<input style="height: 30px" type="submit" value="search">
			</form></center>

</body>
</html>