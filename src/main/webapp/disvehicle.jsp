<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Basic Bootstrap Table</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
<h1 ><center>Vehicle Rental System</center></h1><hr>
<div class="card-body">
		<form method="POST" action="#">
			<div class="input-group form-group">
				<div class="input-group-prepend">

					<span class="input-group-text">User Id:</span>

				</div>
				<!--  <input type="text" class="form-control" placeholder="" name="user_id" required> -->
					<input type="number" class="form-control" placeholder="Enter User Id... " pattern="[0-9]{1-15}" title="User Id should be numbers only" name="user_id" required>
			</div>
			
				<input type="submit" id="submit" value="Display" name="submit"
					class="btn btn-info" href="vehdispl.jsp"> 
				<input type="reset" id="reset"
					value="reset" name="reset" class="btn btn-warning">
			</div>
			</div>
	</form>
	<div class="container">
		<h2>DISPLAY BOOKINGS </h2>
		<div class="table-responsive-sm">
			<table class="table table-hover">
				<thead class="thead-dark">

					<tr>
						<th>USERID</th>
						<th>VehicleId</th>
						<th>rental_days</th>
						<th>booking amount</th>
						<th>discount_price</th>
						<th>return_status</th>
						
					</tr>
					<%   

                                Connection con;
                                PreparedStatement pst,pst1;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/rental","root","welcome");
                                
                                 // String query = ;
                                  
                                 pst=con.prepareStatement("select * from view_booked_vehicle where user_id=?");
                                
                                  String idd=request.getParameter("user_id");
								/* //check if user is registered or not
                                  int flag=0;
                          		//java.sql.Connection con=SingletonCls.getInstance().getconnection();
                          		 pst1 = con.prepareStatement("select user_id from user where user_id=?;");
                          		pst1.setString(1,idd);
                          		ResultSet rses = pst1.executeQuery();

                          		//pst.execute();
                          		while(rses.next())
                          		{
                          			flag=1;
                          		}
                          		if(flag==1)
                          		{ */
                          			
                          		
                                  pst.setString(1,idd);
                                 // Statement st = con.createStatement();
                                  
                                    rs =  pst.executeQuery();
                                    
                                        while(rs.next())
                                        {
                                           // String id = rs.getString("user_id");
                                   %>


				</thead>
				<tbody>
					<tr>
						<td class="table-success"><%=rs.getString("user_id")%></td>
						<td class="table-success"><%=rs.getString("vehicle_id") %></td>
						<td class="table-success"><%=rs.getString("rental_days") %></td>
						<td class="table-success"><%=rs.getString("booking_amount") %></td>
						<td class="table-success"><%=rs.getString("discount_price") %></td>
						<td class="table-success"><%=rs.getString("return_status")%></td>
						
						
					</tr>

					<!-- <tr>
						<td>2</td>
						<td class="table-warning">C</td>
						<td>11.03%</td>
					</tr>
					<tr>
						<td>3</td>
						<td class="table-active">C++</td>
						<td>5.60%</td>
					</tr> -->
				</tbody>
				<%
 }	               
                               %>
			</table>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>
