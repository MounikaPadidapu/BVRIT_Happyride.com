<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>signUpForm</title>
        <link rel="stylesheet" href="css/style.css">
     </head>

     <body>

     <body>
    <div class="container">
	<section id="content">
		<form action="index1.jsp" method = "get">
			<h1>signUp Form</h1>
			<div>
				<input type="text" placeholder="Firstname" required="" id="firstname" />
			</div>
			<div>
				<input type="text" placeholder="Lastname" required="" id="lastname" />
			</div>
             <div>
				<input type="email" placeholder="Email" required="" id="email" />
			</div>
			<div>
				<input type="password" placeholder="Password" required="" id="password" />
			</div>
			 <div>
				<input type="tel" placeholder="contact number" required="" id="number" />
			</div>          
                        
			<div>
				<input type="submit" value="Signup" />
				<!-- <a href="#">Lost your password?</a>
				<a href="signUp.jsp">Register</a> -->
			</div>
		</form><!-- form -->
		<div class="button">
                <a href ="index1.jsp">Login</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
    
        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
