<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>car details</title>
        <link rel="stylesheet" href="css1/style.css">
     </head>

     <body>

     <body>
    <div class="container">
	<section id="content">
	<% 
				    String username =(String)session.getAttribute("username");
	%>
	<h2>Welcome <%=username%> to happyride</h2>
		<form action="cardetails" >
			<h1>signUp Form</h1>
			<div>
				<input type="text" placeholder="car number" required="" name="carnumber" />
			</div>
			<div>
				<input type="text" placeholder="car colour" required="" name="carcolor" />
			</div>
				<div>
				<input type="text" placeholder="car model" required="" name="carmodel" />
			</div>
			
			
			     
                        
			<div>
				<input type="submit" value="next" />
				
			</div>
		</form><!-- form -->
		
		
		<div class="button">
                <a href ="welcome.jsp">login</a>
		</div>
		
		
	</section><!-- content -->
</div><!-- container -->
</body>
    
        <script src="js/index.js"></script>

    
    
    
  </body>
</html>