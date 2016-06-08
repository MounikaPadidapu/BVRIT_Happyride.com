
<%@page import="com.bvrit.happyride.beans.UserBeans"%>
<%@page import="com.bvrit.happyride.dao.UserDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.servlet.http.HttpSession"%>

<html>
<head>
<meta charset="UTF-8">
<title>signUpForm</title>
<link rel="stylesheet" href="css1/style.css">
<script src="js/index.js"></script>
<link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="web/css/slider.css" rel="stylesheet" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="web/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="web/js/camera.min.js"></script>
<script type="text/javascript">
			   jQuery(function(){
				jQuery('#camera_wrap_1').camera({
					height: '500px',
					pagination: false,
				});
			});
		  </script>
 </head>



<body>
	<div class="wrap">
		<!----start-header----->
		<div class="header" id="top">
			<!----top-header----->
			<div class="top-header">
				<div class="clear"></div>
			</div>
			<!----End-top-header----->
			<!---start-top-nav---->
			<div class="top-nav">
				<div class="top-nav-left">
					<ul>
						<li><a href="welcome.jsp"><img src="images/logo.jpg"
								width=90px; title="logo" /></a></li>
						<li><a href="licence.jsp">offer ride</a></li>
						<li class="active"><a href="findride">take ride</a></li>
						<li><a href="profileview.jsp">profile view</a></li>
						<li><a href="startwelcome.jsp">logout</a>


							<div class="clear"></div>
					</ul>
				</div>
				<div class="top-nav-right">
					<form>
						<input type="text"><input type="submit" value="" />
					</form>
				</div>
				<div class="clear"></div>
			</div>
			<!---End-top-nav---->
		</div>
		<!----End-header----->
	</div>
	<!----End-wrap----->
	<div class="container">
		<section id="content">
			<form>
				<h1>Available Rides</h1>
			</form>
			<% 
ArrayList<UserBeans> listOfRides = (ArrayList<UserBeans>) request.getAttribute("listOfRides");
for(UserBeans usrBean : listOfRides) {
 
 %>
			<div style="padding-left: 15px">
				<table>
					<tr>
						<th align="right">Name</th>
						<td>: <%=usrBean.getFirstname()%>&nbsp;<%=usrBean.getLastname()%></td>
					</tr>
					<tr>
						<th align="right">email</th>
						<td>: <%=usrBean.getEmail()%></td>
					</tr>
					<tr>
						<th align="right">Contact Number</th>
						<td>: <%=usrBean.getContactnumber()%></td>
					</tr>
					<tr>
						<th align="right">startingpoint</th>
						<td>: <%=usrBean.getStartingpoint()%></td>
					</tr>
					<tr>
						<th align="right">destinationpoint</th>
						<td>: <%=usrBean.getDestinationpoint()%></td>
					</tr>
					<tr>
						<th align="right">carmodel</th>
						<td>: <%=usrBean.getCarmodel()%></td>
					</tr>
					<tr>
						<th align="right">carcolor</th>
						<td>: <%=usrBean.getCarcolor()%></td>
					</tr>
				</table>
			</div>
			<br />

<%
}
%>
			</table>
		</section>
	</div>
</body>
</html>

