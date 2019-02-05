<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link href="style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Date of Joining</title>

</head>
<body>

<center><h1>Date of Join</h1><br>
<h4>
<lable >
Name : <%String fname = (String)request.getAttribute("fname"); %>
<%= fname%>&nbsp
<%String lname = (String)request.getAttribute("lname"); %>
<%= lname%>
<br>
<br>
Date Of Join :<%String names = (String)request.getAttribute("date"); %>
<%= names%></lable></h4>
</center>
</body>
</html>