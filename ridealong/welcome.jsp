
<!DOCTYPE HTML>
<html>
	<head>
		<title>Happy ride</title>
		<link href="web/css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link href="web/css/slider.css" rel="stylesheet" type="text/css"  media="all" />
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
		  <script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},200);
				});
			});
		</script>
	</head>
	<body>
	<% 
		String username =(String) session.getAttribute("username");
	%>
	<!----start-wrap----->
	<div class="wrap">
		<!----start-header----->
		<div class="header"  id="top">
			<!----top-header----->
			<div class="top-header">

				<div class="clear"> </div>
			</div> 
			<!----End-top-header----->
			<!---start-top-nav---->
			<div class="top-nav">
				<div class="top-nav-left">
					<ul>
						<li class="active"><a href="welcome.jsp"><img src="images/logo.jpg" width = 90px; title="logo" /></a></li>
						<li ><a href="licence.jsp">offer ride</a></li>
						<li><a href="findride">take ride</a></li>
						<li><a href="profileview.jsp">profile view</a></li>
						<li><a href="startwelcome.jsp">logout</a>
						
						
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="top-nav-right">
					<form>
						<input type="text"><input type="submit" value="" /></form>			
				</div>
				<div class="clear" style="font-style: initial;font-size: 20px;">Welcome <%=username%>!</div>
			</div>
			<!---End-top-nav---->
		</div>
		<!----End-header----->
	</div>
	<!----End-wrap----->
	<!--start-image-slider---->
			<div class="slider">					     
					<div class="camera_wrap camera_azure_skin" id="camera_wrap_1">									           
						<div data-src="images/car1.jpg">  </div> 
						<div data-src="images/carpool.jpg">  </div>
						<div data-src="images/share.jpg">  </div>
					</div>
					<div class="clear"> </div>					       
			</div>					
		 <!--End-image-slider---->
		 <!---start-content---->
		 <div class="content">
		 	<div class="top-grids">
		 		<div class="wrap">
			 		<div class="top-grid">
			 			<a href="salepost1.jsp"><img src="images/2.png" title="icon-name"></a>
			 			<h3>join</h3>
			 			<p>it's quick ,simple and free </p>
			 			<!--  <a class="button" href="#">Submit</a>-->
			 		</div>
			 		<div class="top-grid">
			 			<a href="PostFile.jsp"><img src="images/6.png" title="icon-name"></a>
			 			<h3>offer/book a ride</h3>
			 			<p>search rides on your way and book seats  </p>
			 	    <!--<a class="button" href="#">Submit</a>-->
			 			
			 		</div>
			 		<div class="top-grid last-topgrid">
			 			<a href="RentLog1.jsp"><img src="images/4.png" title="icon-name"></a>
			 			<h3>travel together</h3>
			 			<p>save time and money </p>
			 		<!--<a class="button" href="#">Submit</a>-->
			 		</div>
			 		<div class="clear"> </div>
		 		</div>
		 	</div>
	</div>
	</body>
</html>
