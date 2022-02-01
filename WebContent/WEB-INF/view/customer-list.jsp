<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page import="com.obeid.springdemo.util.SortUtils" %> 

<!doctype html>
<html lang="en">
   <head>
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
     
   
    
    <div id="bg" class="container bg-light py-3 mt-5">
    <i id="sw"  role="button" class="bi bi-moon-fill" onClick="dark()"> mode</i>
    <!--nav -->
        <nav id="nav" class="navbar navbar-light bg-light my-5">
            <div class="container-fluid">
              <a class="navbar-brand h1" href="#">Customer List</a>
              <!--toggler-->
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
               <!--/toggler-->
               <!--links-->
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="text-success nav-link active h6" aria-current="page" 
                    href="showFormForAdd">
                    <!-- with buttons use: 
                    onClick="window.location.href='showFormForAdd'; return false;"
                     -->
                     <i class="bi bi-person-plus-fill"> </i> Add a new customer</a>
                  </li>
                 
                </ul>
               <!--/links-->
                <!--search-->
                <form:form action="searchCustomers" method="GET" class="d-flex">
                	<!-- name is the String parameter -->
                  <input  type="text" name="searchedText" class="form-control me-2" 
                        placeholder="Search" aria-label="Search"/>
                  <input  type="submit" value="search ..." class="btn btn-outline-success"/>
                </form:form>
                 <!--/search-->
            </div>
          </nav>
          <!--/nav-->
          <!--table-->
          
          <!-- construct a sort link for first name -->
			<c:url var="sortLinkFirstName" value="/customer/list">
				<c:param name="sort" value="<%= Integer.toString(SortUtils.FIRST_NAME) %>" />
			</c:url>
		 <!-- construct a sort link for last name -->
			 <c:url var="sortLinkLastName" value="/customer/list">
			 	<c:param name="sort" value="<%= Integer.toString(SortUtils.LAST_NAME) %>"/>
			 </c:url>	
		 <!-- construct a sort link for last name -->
		 	<c:url var="sortLinkEmail" value="/customer/list">
	 			<c:param name="sort" value="<%= Integer.toString(SortUtils.EMAIL) %>"/>
		 	</c:url>
		 	
		 	
          
          <table id="tab" class="table table-light table-striped">
            <thead>
              <tr class="table-secondary">
                <th scope="col">ID</th>
                <th scope="col">
                <a href="${sortLinkFirstName}">
                <i class="bi bi-sort-alpha-down"></i></a> First Name
                </th>
                <th scope="col">
                <a href="${sortLinkLastName}">
                <i class="bi bi-sort-alpha-down"></i></a> Last Name
                </th>
                <th scope="col">
                <a href="${sortLinkEmail}"><i class="bi bi-sort-alpha-down"></i></a> E-Mail
                </th>
                <th scope="col">Actions
                </th>
              </tr>
            </thead>
            <tbody>
            
            <c:forEach var="c" items="${customers}">
           
            <!-- create update link with parameter (customer id) -->
            <c:url var="updateLink" value="/customer/showFormForUpdate">
            	<c:param name="customerId" value="${c.id}" />
            </c:url>
            
            <!-- create delete link with parameter (customer id) -->
            <c:url var="deleteLink" value="/customer/delete">
            	<c:param name="customerId" value="${c.id}" />
            </c:url>
           	 <tr>
                <th scope="row" >${c.id }</th>
                <td>${c.firstName}</td>
                <td>${c.lastName}</td>
                <td>${c.email}</td>
                <td>
                <a title="update" href="${updateLink}" >
                <i class="h6 text-success bi bi-pencil-square"></i></a> |     
                <a title="delete" href="${deleteLink}" 
                 onclick="return confirm('Do you want to delete this customer?');" >
                <i class="h6 text-danger bi bi-folder-x"></i></a> 
                </td>
              </tr>
            	
            </c:forEach>
              
            </tbody>
          </table>
          <!--/table-->
    </div>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/index.js"></script>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>