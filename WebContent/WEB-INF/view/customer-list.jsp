<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
          crossorigin="anonymous">

    <title>Customer List</title>
  </head>
  <body>
      <!--nav -->
    <div class="container">
        <nav class="navbar navbar-dark bg-dark my-5">
            <div class="container-fluid">
              <a class="navbar-brand">Customer List</a>
              <form class="d-flex">
                <input class="form-control me-2" type="search" 
                       placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            </div>
          </nav>
          <!--/nav-->
          <!--table-->
          <table class="table table-secondary table-striped">
            <thead>
              <tr class="table-dark">
                <th scope="col">ID</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">E-Mail</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="c" items="${customers}">
            	
           	 <tr>
                <th scope="row" >${c.id }</th>
                <td>${c.firstName}</td>
                <td>${c.lastName}</td>
                <td>${c.email}</td>
              </tr>
            	
            </c:forEach>
              
            </tbody>
          </table>
          <!--/table-->
    </div>

   
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>