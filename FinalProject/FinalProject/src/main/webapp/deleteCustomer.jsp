<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="deleteCustomer">
	<input type="number" placeholder="Enter Account number" name="accountNo"><br>
	<input type="submit" onclick=showmessage()>
	</form>
	<br>            
	 <a href="/"><button>Back</button></a>
	<script type="text/javascript">function showmessage(){
		alert("Customer Deleted")
	}
		</script>
</body>
</html>