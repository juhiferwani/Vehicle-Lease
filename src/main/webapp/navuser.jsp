<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Buttons Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<style>
	
	body{
 
  background-image: url("st3.jpg");
 background-attachment: fixed;
background-size: 100% 100%;
  background-repeat: no-repeat;
  background-position: center;
 
  }</style>
</head>
<body>

	<div class="container ">
	
		<h2 style="color: Black; font-family:cursive;">
			<center>WELCOME TO VEHICLE RENTAL APPLICATION
		</h2>
		</center>
	</div>
	<!--  
	<button type="button" class="btn btn-light">ADD VEHICLES</button>
	<button type="button" class="btn btn-link">RETURN VEHICLES</button>
	<div class="btn-group">-->
		<button type="button" class="btn btn-primary dropdown-toggle"
			data-toggle="dropdown">User Operations</button>

		<div class="dropdown-menu">
			<a class="dropdown-item" href="#">DISPLAY VEHICLES</a>    
			<a class="dropdown-item" href="#">SELECTION AND BOOKING</a>
			 <a class="dropdown-item"href="disvehicle.jsp">DISPLAY BOOKING</a> 
			 <a class="dropdown-item" href="#">RETURNING VEHICLES</a>
			 <a class="dropdown-item"href="#">PROVIDING FEEDBACK</a> 
			 <a class="dropdown-item" href="#">LOG OUT</a>
		</div>
	</div>
	<!--  
	<div class="card-body">
		<form method="POST" action="#">
			<div class="input-group form-group">
				<div class="input-group-prepend">

					<span class="input-group-text">UserName</span>

				</div>
				<input type="text" class="form-control" placeholder="" name="user_id"
					required>
			</div>
			
				<input type="submit" id="submit" value="Display" name="submit"
					class="btn btn-info" href="vehdispl.jsp"> 
				<input type="reset" id="reset"
					value="reset" name="reset" class="btn btn-warning">
			</div>
	</div>
	
	<ul class="nav nav-pills">
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="vehdispl.jsp">DISPLAY</a></li>
	</ul>
	-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
		
</body>
</html>