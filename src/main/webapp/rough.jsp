<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Vehicle</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<style>
html, body {
	background-image: url('st.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	font-family: 'Numans', sans-serif;
}

.container {
	height: 200%;
	align-content: center;
}

.card {
	height: 400px;
	margin-top: auto;
	margin-bottom: auto;
	width: 400px;
	border: 100px;
	background-color: inherit;
}

.card-header h3 {
	color: white;
}

.input-group-prepend span {
	width: 100px;
	background-color: teal;
	color: black;
	border: 0 !important;
}

input:focus {
	outline: 0 0 0 0 !important;
	box-shadow: 0 0 0 0 !important;
}

.remember {
	color: white;
}

.remember input {
	width: 20px;
	height: 20px;
	margin-left: 15px;
	margin-right: 5px;
}

.login_btn {
	color: black;
	background-color: gray;
	width: 100px;
}

.login_btn:hover {
	color: black;
	background-color: white;
}

.links {
	color: white;
}

.card-footer {
	color: black;
}
</style>
	<form method="get" action="#">
		<div class="container ">
			<div class="d-flex justify-content-center h-100">
				<div class="card">
					<div class="card-header">
						<h3>
							<b>BOOK VEHICLE</b>
						</h3>

					</div>
					<div class="card-body">
						<form method="get" action="#">
							<div class="input-group form-group">
								<div class="input-group-prepend">

									<span class="input-group-text">User id</span>

								</div>
								<input type="number" class="form-control"
									placeholder="Enter userid" pattern="[0-9]{1-15}"
									title="User Id should be numbers only" name="user_id" required
									data-toggle="popover" data-placement="top"
									data-content="Ex:101">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text">Vehicle id </span>
								</div>
								<input type="number" class="form-control"
									placeholder="Enter vehicleid" pattern="[0-9]{1-15}"
									title="Vehicle Id should be numbers only" name="vehicle_id"
									required data-toggle="popover" data-placement="top"
									data-content="Ex:101">
							</div>
							<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text">Rental days</span>
							</div>
							<input type="number" class="form-control"
								placeholder="Enter Rental Days..." pattern="[0-9]{1-15}"
								title="Rental Days should be numbers only" name="rental_days"
								required data-toggle="popover" data-placement="top"
								data-content="Ex:10">
					</div>

					<script type="text/javascript">
						function clicked() {
							alert('BOOKED SUCCESSFULLY');
						}
						//onclick="clicked();"
					</script>
					<div class="form-group">
						<input type="submit"  value="BOOK"
							class="btn float-right login_btn " role="alert">
					</div>
	</form>
	</div>
	<div class="card-footer"></div>
	</div>
	</div>
	</div>
	</div>
	</form>
	<% boolean B=false;
	int f;
	try{f=0;
	Connection con;
	PreparedStatement pst, pst1;
	ResultSet rs;

	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rental", "root", "welcome");

	String user_id = request.getParameter("user_id");
    String veh_id1 = request.getParameter("vehicle_id");
    String days1 = request.getParameter("rental_days");
    
	double rent = 0;
	double discount_price = 0;
	//int veh_id = Integer.parseInt(veh_id1);
	//int days = Integer.parseInt(days1);
	pst = con.prepareStatement("select vehicle_rent from vehicle  where vehicle_id=?");
	pst.setInt(1,Integer.parseInt(veh_id1));
	ResultSet rses = pst.executeQuery();
	//pst.setInt(1,veh_id);
	//pst.execute();
	while (rses.next()) {
		rent = rses.getDouble(1);
	}

	double normal_price = Integer.parseInt(days1)* rent;
	if (rent >= 5000) {
		discount_price = normal_price * 10 / 100;
	}
	double final_price = normal_price - discount_price;
	pst = con.prepareStatement("insert into view_booked_vehicle values(?,?,?,?,?,?)");
	pst.setInt(1, Integer.parseInt(user_id));
	pst.setInt(2,Integer.parseInt(veh_id1));
	pst.setInt(3, Integer.parseInt(days1));
	pst.setDouble(4, final_price);
	pst.setDouble(5, discount_price);
	pst.setString(6, "not returned");
	pst.execute();

	pst1 = con.prepareStatement("update vehicle set vehicle_status='unavailable' where vehicle_id=?");
	pst1.setInt(1,Integer.parseInt(veh_id1));
	B=pst1.execute();
	}
	catch(Exception exe){
		exe.printStackTrace();
		f=1;
	}
	if(f==1)
	{ %>
		<script type="text/javascript">
		alert("WELCOME");
		</script>
<% 	}
	else if(B==true)
	{
		%>
		<script type="text/javascript">
		alert("WELCOME");
		</script>
<% 	
	}
	%>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>