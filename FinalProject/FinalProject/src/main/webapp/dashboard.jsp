<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laxmi Chit Fund</title>
<!-- Bootstrap links -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">

<style>
html,body
{
    overflow-x: hidden;
    font-family: 'Montserrat', sans-serif;
}
h1{
	font-family: 'Montserrat';
	font-size: 3.5rem;
	line-height: 1.5;
}
	.services-img{
		width: 150px;
		height: 150px;
	}
</style>
</head>
<body>
	
	<br><br>
	

		<center>
		<h1>Welcome ${cust.firstName} ${cust.lastName}</h1>
		    <div class="row">
		    	<div class="col-lg-4">
		        	<img src="https://raw.githubusercontent.com/pranjal-5683/Ease-banking-system/master/images/user.png" class="services-img" alt="user-img"><br><br>
		        	<a href="createuser.php"><button class="btn btn-lg btn-secondary services-btn">My Profile</button></a>
		      	</div>
		
		      	<div class="col-lg-4">
		        	<img src="https://raw.githubusercontent.com/pranjal-5683/Ease-banking-system/master/images/transfer.png" class="services-img" alt="money-transfer"><br><br>
		        	<a href="transactions"><button class="btn btn-lg btn-secondary services-btn">Make a Transaction</button></a>
		      	</div>
		
		      	<div class="col-lg-4">
		        	<img src="https://raw.githubusercontent.com/pranjal-5683/Ease-banking-system/master/images/history.png" class="services-img" alt="transaction-himdory"><br><br>
		        	<a href="transactionhistory.php"><button class="btn btn-lg btn-secondary services-btn">Transaction History</button></a>
		      	</div>
		    </div>
	    </center>
	    <br><br><br>
	    <h3>Balance : ${cust.balance}</h3>
	    <br><br>
	    <form action="addMoney">
	    	<input type="text" name="amount" ><br>
	    	<input type="submit" value="Add Money">
	    </form>
		
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>