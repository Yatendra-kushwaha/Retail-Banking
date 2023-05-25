<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" ></script>
</head>
<body>
	<form action="dashboard" method="get">
		<div style="margin:10% 30%" >
	
	  <div class="form-outline mb-4">
	  	<label class="form-label">Account Number</label>
	    <input type="text" class="form-control" name="accountNo"/>
	  </div>
	
	  <!-- Password input -->
	  <div class="form-outline mb-4">
	  	<label class="form-label" >Password</label>
	    <input type="password" class="form-control" name="password"/>
	  </div>
		
	  <!-- Submit button -->
	  <input type="submit" value="Sign In" class="btn btn-primary btn-block mb-4">
	
	  <!-- Register buttons -->
	  <div class="text-center">
	    <p>Not a customer? <a href="/register">Register</a></p>
	  </div>
	  </div>
	</form>
	
	${time }
</body>
</html>