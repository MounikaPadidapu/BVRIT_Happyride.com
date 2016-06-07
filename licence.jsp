<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>licence details</title>
        <link rel="stylesheet" href="css1/style.css">
     </head>

     

     <body><% 
				    String username =(String)session.getAttribute("username");
	%>
	<h2>Welcome <%=username%> to happyride</h2>
    <div class="container">
	<section id="content">
		<form action="licence" >
			<h1>licence details</h1>
			<div>
				<input type=text placeholder="licence number" required="" name="licencenumber" />
			</div>
			<div>
				<input type=text placeholder="licence validation date" required=""  name="validationnumber" />
			</div>
			
			
			     
                        
			<div>
				<input type="submit" value="submit" />
			
			</div>
		</form><!-- form -->
		
		
		<div class="button">
                <a href ="welcome.jsp">Login</a>
		</div>
		
		
	</section><!-- content -->
</div><!-- container -->
</body>
    
        <script src="js/index.js"></script>

    
    
    
  </body>
</html>