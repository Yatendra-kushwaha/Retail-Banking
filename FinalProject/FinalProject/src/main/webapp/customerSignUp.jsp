<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" ></script>

<style type="text/css">
	@media (min-width: 1025px) {
.h-custom {
height: 100vh !important;
}
}
.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}

.gradient-custom-2 {
/* fallback for old browsers */
background: #a1c4fd;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(161, 196, 253, 1), rgba(194, 233, 251, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(161, 196, 253, 1), rgba(194, 233, 251, 1))
}

.bg-indigo {
background-color: #4835d4;
}
@media (min-width: 992px) {
.card-registration-2 .bg-indigo {
border-top-right-radius: 15px;
border-bottom-right-radius: 15px;
}
}
@media (max-width: 991px) {
.card-registration-2 .bg-indigo {
border-bottom-left-radius: 15px;
border-bottom-right-radius: 15px;
}
}
</style>
</head>
<body>

	<form action="addCustomer" method="post">
		<section id="customer-details" class="h-100 h-custom gradient-custom-2">
		  <div class="container py-5 h-100">
		    <div class="row d-flex justify-content-center align-items-center h-100">
		      <div class="col-12">
		        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
		          <div class="card-body p-0">
		            <div class="row g-0">
		              <div class="col-lg-6">
		                <div class="p-5">
		                  <h3 class="fw-normal mb-5" style="color: #4835d4;">General Infomation</h3>
		
		         	
		                  <div class="row">
		                    <div class="col-md-6 mb-4 pb-2">
								<div class="form-outline">
		                        <input type="text" name="firstName" class="form-control form-control-lg" />
		                        <label class="form-label">First name</label>
		                      </div>
		                    </div>
		                    <div class="col-md-6 mb-4 pb-2">
		                      <div class="form-outline">
		                        <input type="text" name="lastName" class="form-control form-control-lg" />
		                        <label class="form-label" >Last name</label>
		                      </div>
		                    </div>
		
		                    <div class="col-md-6 mb-4 pb-2">
							    <div class="form-outline">
		                        <input type="text" name="mobileNumber"  class="form-control form-control-lg" />
		                        <label class="form-label" >Mobile Number</label>
		                      </div>
		                    </div>
		                    <div class="col-md-6 mb-4 pb-2">
		                      <div class="form-outline">
		                        <input type="text" name="panCard"  class="form-control form-control-lg" />
		                        <label class="form-label" >Pan Card Number</label>
		                      </div>
		                    </div>
		                  </div>
		
		                  <div class="mb-4">
		                    <div class="form-outline form-white">
		                      <input type="email" name="emailId"  class="form-control form-control-lg" />
		                      <label class="form-label" >Your Email</label>
		                    </div>
		                  </div>
		            
		                  
				            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
			                  <h6 class="mb-0 me-4">Gender: </h6>
			                  <div class="form-check form-check-inline mb-0 me-4">
			                    <input class="form-check-input" type="radio" name="gender" value="male" />
			                    <label class="form-check-label" >Male</label>
			                  </div>
			
			                  <div class="form-check form-check-inline mb-0 me-4">
			                    <input class="form-check-input" type="radio" name="gender" value="female" />
			                    <label class="form-check-label" >Female</label>
			                  </div>
			                </div>
			                
			                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
			                  <h6 class="mb-0 me-4">Account: </h6>
			                  <div class="form-check form-check-inline mb-0 me-4">
			                    <input class="form-check-input" type="radio" name="accountType" value="savings" />
			                    <label class="form-check-label" >Savings</label>
			                  </div>
			
			                  <div class="form-check form-check-inline mb-0 me-4">
			                    <input class="form-check-input" type="radio" name="accountType" value="current" />
			                    <label class="form-check-label" >Current</label>
			                  </div>
			                </div>
			                
			                <div class="mb-4">
		                    <div class="form-outline form-white">
		                      <input type="password" name="password"  class="form-control form-control-lg" />
		                      <label class="form-label" >Password</label>
		                    </div>
		                  </div>
		           		</div>
		              </div>
	  
		              <div class="col-lg-6 bg-indigo text-white">
		                <div class="p-5">
		                  <h3 class="fw-normal mb-5">Contact Details</h3>
		
		                  <div class="mb-4 pb-2">
		                    <div class="form-outline form-white">
		                      <input type="text" name="houseNumber" class="form-control form-control-lg" />
		                      <label class="form-label" >House No.</label>
		                    </div>
		                  </div>
		
		                  <div class="mb-4 pb-2">
		                    <div class="form-outline form-white">
		                      <input type="text" name="streetName"  class="form-control form-control-lg" />
		                      <label class="form-label" >Street Name/ Area</label>
		                    </div>
		                  </div>
		
		                  <div class="row">
		                    <div class="col-md-5 mb-4 pb-2">
		                      <div class="form-outline form-white">
		                        <input type="text" name="pincode"  class="form-control form-control-lg" />
		                        <label class="form-label" >Pin Code</label>
		                      </div>
		                    </div>
		                    <div class="col-md-7 mb-4 pb-2">
		                      <div class="form-outline form-white">
		                        <input type="text" name="district"  class="form-control form-control-lg" />
		                        <label class="form-label" >District</label>
		                      </div>
		                    </div>
		                  </div>
		
		                  <div class="mb-4 pb-2">
		                    <div class="form-outline form-white">
		                      <input type="text" name="state"  class="form-control form-control-lg" />
		                      <label class="form-label" >State</label>
		                    </div>
		                  </div><br><br>
		                  <input type="submit" value="Register" class="btn btn-light btn-lg" data-mdb-ripple-color="dark">
		                 </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		    
		    <div class="text-center">
			    <p>Already a customer? <a href="/">Login</a></p>
			  </div>
		  </div>
		  
		</section>
		
		
	</form>
</body>
</html>