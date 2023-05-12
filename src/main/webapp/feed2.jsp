<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Providing feedback</title>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

</head>
<%
response.getWriter().println("<header><div><h1><center padding-top:0px>Vehicle Rental System</center></h1></header>");
//response.getWriter().println("<br>");
 response.getWriter().println("<a href=http://localhost:8080/VehicleRental/Useroperations.jsp class=linker1 style=color:orange>Back</a></div></header>");
 //response.getWriter().println("<br>");
HttpSession hs = request.getSession();
Object o = hs.getAttribute("LOGIN");
String user = (String) o;
response.getWriter().println("<div align=right> Logged in user: " + user + "</div><br>");
response.getWriter().println("<div align=right> <a href=http://localhost:8080/VehicleRental/LogoutServlet> SignOut </a> </div>");

%>

<body >
	<form method="get" action="#">
		
			<!-- <form method="get" action="#"> -->
			
				<div class="input-group-prepend">

					<span class="input-group-text">User id</span>

				</div>
				<input type="number" class="form-control" placeholder="Enter userid"
					pattern="[0-9]{1-15}" title="User Id should be numbers only"
					name="user_id" required data-toggle="popover" data-placement="top"
					data-content="Ex:101">


				<div class="wrapper">
					<input type="radio" name="rate" id="star-1" value="1"> <input
						type="radio" name="rate" id="star-2" value="2"> <input
						type="radio" name="rate" id="star-3" value="3"> <input
						type="radio" name="rate" id="star-4" value="4"> <input
						type="radio" name="rate" id="star-5" value="5">
					<div class="content">
						<div class="outer">
							<div class="emojis">
								<li class="slideImg"><img src="emoji-1.png" alt=""></li>
								<li><img src="emoji-2.png" alt=""></li>
								<li><img src="emoji-3.png" alt=""></li>
								<li><img src="emoji-4.png" alt=""></li>
								<li><img src="emoji-5.png" alt=""></li>
							</div>
						</div>
						<div class="stars">
							<label for="star-1" class="star-1 fas fa-star"> </label> <label
								for="star-2" class="star-2 fas fa-star"> </label> <label
								for="star-3" class="star-3 fas fa-star"> </label> <label
								for="star-4" class="star-4 fas fa-star"> </label> <label
								for="star-5" class="star-5 fas fa-star"> </label>
						</div>
					</div>
					<div class="footer">
						<span class="text"></span> <span class="numb"></span>
					</div>

					
					<div class="form-group ,container ">
						<div class="center">
							<input type="submit"  value="FEEDBACK"
								class="btn float-right login_btn  " role="alert" required>

						</div>

					</div>
				</div>
	</form>


	</div>
	<%
	//ResultSet rs;
	try {
		
		Connection con;
		PreparedStatement pst;
		String idd = request.getParameter("user_id");
		int idd2 = Integer.parseInt(idd);
		String rating = request.getParameter("rate");
		int rate = Integer.parseInt(rating);
		if(idd.equalsIgnoreCase(user)){
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ntt","root","root");
		pst = con.prepareStatement("insert into feedback values(?,?,?)");

		pst.setInt(1, idd2);

		pst.setInt(2, rate);
		String feed = "";
		if (rate == 1) {
			feed += "I just hate it";
		} else if (rate == 2) {
			feed += "I don't like it";
		} else if (rate == 3) {
			feed += "This is awesome";
		} else if (rate == 4) {
			feed += "I just like it";
		} else if (rate == 5) {
			feed += "I just love it";
		}
		pst.setString(3, feed);

		//pst.setInt(4,idd2);
		pst.execute();
	response.sendRedirect("Useroperations.jsp");
	}
		else
		{
			response.getWriter().println("Enter Correct User Id");
		}
	}
	
	catch (NumberFormatException exe) {
		exe.printStackTrace();
	}
	%>
</body>
</html>