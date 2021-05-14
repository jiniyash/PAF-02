<%@page import="com.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.js"></script>
<script src="Components/research.js"></script>
<meta charset="ISO-8859-1">
<title>AccountService</title>
</head>
<body>
<div class="container"><div class="row"><div class="col-6">
<h1>Account Register</h1>

	<form id="formUser" name="formUser">
		
		Name:
		<input id="Name" name="Name" type="text" class="form-control form-control-sm"><br>
		Email :
		<input id="Email" name="Email" type="text" class="form-control form-control-sm"><br>
		Password:
		<input id="pwd" name="pwd" type="password" class="form-control form-control-sm"><br>
		Address:
		<input id="Address" name="Address" type="text" class="form-control form-control-sm"><br>
		 Mobile:
		<input id="Mobile" name="Mobile" type="text" class="form-control form-control-sm"><br>
		User Type:
		<input id="UserType" name="UserType" type="text" class="form-control form-control-sm"><br>
		
		<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
		<input type="hidden" id="hidAccountIDSave" name="hidAccountIDSave" value="">
	</form>
	
	<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
	<br>
	<div id="divUserGrid">
	<%
	User resdObj = new User(); 
	 out.print(resdObj.readUser()); 
	%>
	</div>
</div> </div> </div> 

</body>
</html>