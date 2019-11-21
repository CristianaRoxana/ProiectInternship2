<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:include page="navLogin.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css.css">
</head>
<body>
<div class="container  my-5 ">
	<div class ="d-flex justify-content-center  mb-3">
		<img src="${pageContext.request.contextPath}/face.png" class="imagine-face">
	</div>
  <div class ="d-flex justify-content-end  mb-3">
			<div class="p-2 "><a href="#">You don't have an account yet</a></div>
			
  </div>
  
  <form action="adminCRUD.jsp" method="post">
    

    <div class="input-group mb-3">
     
      <div class="input-group-prepend">
        <span class="input-group-text">@</span>
      </div>
	  <input type="text" class="form-control" placeholder="Your Email" name="email">
    </div>
	<div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">&#128274;</span>
      </div>
      <input type="password" class="form-control" placeholder="Your Password"  name="password">
    </div>
	<div class="d-flex justify-content-center mt-3">
    <button type="submit" class="btn btn-success" value="Submit">Submit</button>
	</div>
  </form>
  <div class="d-flex justify-content-end mb-3">
			<a href="#">Forgot Password?</a> 
   </div>
</div>
</body>
</html>

