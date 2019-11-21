<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="js.js"></script>
  

<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="css.css">
</head>
<body>
<div class="container my-5 ">
	<div class="alegere  my-5  ">
	<form action="Home" method="post">
		<div class="row">
		    <div class="col-sm-4" ><p>Destinatie:</p><input class="form-control" type="text" placeholder="oras,statiune,regiune,tara" name="destinatie"></div>
		     <div class="col-sm-4"><p>Hotel:</p><input class="form-control" type="text" placeholder="nume hotel"name="hotel"></div>
		     <div class="col-sm-4"><p>Data:</p><input class="form-control" type="date" placeholder="YYYY-DD-MM" name="data"></div>
		    
		</div>
		<br><br>
		<div class="row">
		   <div class="col-sm-2" ><label for="Nopti">Nopti:</label>
		    <select class="form-control" id="Nopti" name="nopti">
		      <option>1</option>
		      <option>2</option>
		      <option>3</option>
		      <option>4</option>
		      <option>5</option>
		      <option>6</option>
		      <option>7</option>
		    </select></div>
		    <div class="col-sm-2" ><label for="Adulti">Adulti:</label>
		    <select class="form-control" id="Adulti" name="adulti">
		      <option>1</option>
		      <option>2</option>
		      <option selected>3</option>
		      <option>4</option>
		    </select></div>
		    <div class="col-sm-2" ><label for="Copii">Copii:</label>
		    <select class="form-control" id="Copii" name="copii">
		      <option>1</option>
		      <option selected>2</option>
		      <option>3</option>
		      <option>4</option>
		    </select></div>
		    
		</div>
		<br><br>
		<div class="row">
		   <div class="col-sm-4" ><p>Transport:</p>
			   <select name="transport">
				  <option value="1" ${'Avion' eq param.transport ? 'selected' : ''}>Avion</option>
				  <option value="2" selected>Autocar</option>
				  <option value="3" ${'Fara transport' eq param.transport ? 'selected' : ''}>Fara transport</option>
				</select>
			</div>
		     <div class="col-sm-4" ><p>Masa:</p>
			   <select name="masa">
				  <option value="1" selected>oricare</option>
				  <option value="2"  ${'Mic dejun' eq param.masa ? 'selected' : ''}>Mic dejun</option>
				  <option value="3"${'Demipensiune' eq param.masa ? 'selected' : ''}>Demipensiune</option>
				  <option value="4"${'All inclusive' eq param.masa ? 'selected' : ''}>All inlcusive</option>
				</select>
			</div>
		     <div class="col-sm-4"><p>Stele:</p>
				<select name="stele">
			    <option value="1" selected>*</option>
			    <option value="2" ${'**' eq param.stele ? 'selected' : ''}>**</option>
			    <option value="3" ${'***' eq param.stele ? 'selected' : ''}>***</option>
			    <option value="4" ${'****' eq param.stele ? 'selected' : ''}>****</option>
			     <option value="5" ${'*****' eq param.stele ? 'selected' : ''}>*****</option>
				</select>
			</div>
			</div>
			<div class="row d-flex justify-content-center mt-5">
			 <button type="submit" class="btn btn-success" value="Submit">Submit</button>
			</div>
			
	</form>
</div>
<div>
	<input type="button"  id="unu" value="Cauta Oferte" onclick=" relocate_home()">
</div>
</body>
</html>
