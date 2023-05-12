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
	<div class="container">
		<h2>Basic Bootstrap Table</h2>
		<div class="table-responsive-sm">
			<table class="table table-hover">
				<thead class="thead-dark">

					<tr>
						<th>USERID</th>
						<th>USERPASSWORD</th>
						<th>USERNAME</th>
						<th>EMAIL</th>
						<th>PHONE</th>
						<th>CITY</th>
					</tr>
					<%   

                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/student","root","welcome");
                                
                                  String query = "select * from user";
                                  
                                //  pst=con.prepareStatement(query);
                                
                                  //String idd=request.getParameter("user_id");
                                  //pst.setInt(1,Integer.parseInt(idd));
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("user_id");
                                   %>


				</thead>
				<tbody>
					<tr>
						<td class="table-success"><%=rs.getString("user_id")%></td>
						<td class="table-success"><%=rs.getString("user_pwd") %></td>
						<td class="table-success"><%=rs.getString("user_name") %></td>
						<td class="table-success"><%=rs.getString("user_email") %></td>
						<td class="table-success"><%=rs.getString("user_phone")%></td>
						<td class="table-success"><%=rs.getString("user_city")%></td>
						
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
