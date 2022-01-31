<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!doctype html>
<html lang="en">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
     <!--css from resources-->
     <link rel="stylesheet" type="text/css"          
            href="${pageContext.request.contextPath}/resources/css/index.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
          crossorigin="anonymous">
    <!-- bootstrapp icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
   
   

    <title>Customer List</title>
  </head>
  <body class= bg-secondary>
   <div class="container">
   <nav class="navbar navbar-light bg-light mt-5">
  		<div class="container-fluid">
    		<a class="navbar-brand" href="#">Add Customer</a>
  		</div>
  </nav>
  <div class="card w-75 my-5 p-5">
  
  <table class="table table-borderless p-5">
  <form:form action="saveCustomer" modelAttribute="customer" method="POST">
 
  		<tr>
  			<td>
  			<label class="form-label">First name</label>
  			</td>
  			<td>
  			<form:input path="firstName" class="form-control"/>
  			</td>
  		</tr>
  		
  		<tr>
  			<td>
  			<label class="form-label">Last name</label>
  			</td>
  			<td>
  			<form:input path="lastName" class="form-control"/>
  			</td>
  		</tr>
  		
  		<tr>
  			<td>
  			<label class="form-label">E-mail </label>
  			</td>
  			<td>
  			<form:input path="email" class="form-control"/>
  			</td>
  		</tr>
  		<tr>
  			<td class="text-danger" role="button" 
  			onClick="window.location.href='list';">
  			<i class="bi bi-box-arrow-left"></i> back
  			</td>
  			<td>
  			<input type="submit" value="save customer" class="btn btn-secondary">
  			</td>
  		</tr>
  </form:form>
  </table>
   </div>
  </div>
  
  	
  
    
   
   
       

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/index.js"></script>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>