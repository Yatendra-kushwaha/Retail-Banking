<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
 	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	
	 <table border="1">
	  <thead>
	   <tr>
	   	<th>Account No</th>
	   	<th>First Name</th>
	   	<th>Last Name</th> 
	   	<th>Email</th>
	   	<th>Mobile No</th>
	   	<th>Gender</th> 
	   	<th>Pan Card Number</th> 
	   </tr>
	  </thead>
	    <tbody> 
	     <c:forEach var="list" items="${list}">
	      <tr>
	        <td>${list.accountNo}</td>
	        <td>${list.firstName}</td>
	        <td>${list.lastName}</td>
	        <td>${list.emailId}</td> 
	         <td>${list.mobileNumber}</td>
	        <td>${list.gender}</td>
	        <td>${list.panCard}</td> 
	      </tr>
	     </c:forEach>
	    </tbody>
	    
	 </table> 
	 <br>
	 <table border="1">
	  <thead>
	   <tr>
	   	<th>Account No</th>
	   	<th>House Number</th>
	   	<th>Street Name</th> 
	   	<th>District</th>
	   	<th>State</th>
	   	<th>Pincode</th> 	   	
	   </tr>
	  </thead>
	    <tbody> 
	     <c:forEach var="addlist" items="${addlist}">
	      <tr>
	        <td>${addlist.accountNo}</td>
	        <td>${addlist.houseNumber}</td>
	        <td>${addlist.streetName}</td>
	        <td>${addlist.district}</td> 
	         <td>${addlist.state}</td>
	        <td>${addlist.pincode}</td>
	      </tr>
	     </c:forEach>
	    </tbody>
	 </table> 
	 <br>            
	 <a href="/"><button>Back</button></a>
	 <br>            
	 

	
	
	
	
	
</body>
</html>