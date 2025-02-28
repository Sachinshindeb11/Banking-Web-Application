<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Bank Application</title>


    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">


    <style>
    
    	body {
        	background-image: url('<%= request.getContextPath() %>/images/bank.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height: 100vh;
            margin: 0; 
            display: flex; 
            justify-content: center;
            align-items: center;
        }
        
        .overlay {
            position: absolute;
            top: 0; 
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }
    
        .signup-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .form{
		background-color: #fff;
	    padding: 30px;
	    border-radius: 10px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1);
	    transition: all 0.3s ease-in-out;
	}
		.form:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
        }
         
        .message1{
        	font-size:small;
        	display:flex;
        	align-items:center;
        	justify-content:center;
        	color:green;
        }
         
        .message2{
        	font-size:small;
        	display:flex;
        	align-items:center; 
        	justify-content:center;
        	color:red;
        }
        
    </style>
</head>
<body>
	<div class="overlay"></div>
    <div class="container">
        <div class="signup-container">
            <h2>Bank Account Sign Up</h2>
		
			<%String success = (String) session.getAttribute("success");
       		 if (success != null) { %>
            <h3 class="message1"><%= success %></h3>
        	<% } %>
        
        	<% String failure = (String) session.getAttribute("failure");
       		 if (failure != null) { %>
            <h3 class="message2"><%= failure %></h3>
        	<% } %>

            <form class="form" action="SignUp" method="POST">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" class="form-control" id="name" name="name" required placeholder="Enter your full name">
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="mail" name="mail" required placeholder="Enter your email address">
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" class="form-control" id="phone" name="phone" required placeholder="Enter your phone number">
                </div>

                <div class="form-group">
                    <label for="pin">Pin</label>
                    <input type="password" class="form-control" id="pin" name="pin" required placeholder="Enter your pin">
                </div>

                <div class="form-group">
                    <label for="confirmPin">Confirm Pin</label>
                    <input type="password" class="form-control" id="confirmPin" name="confirmPin" required placeholder="Confirm your pin">
                </div>

                <button type="submit" class="btn btn-primary btn-block">Create Account</button>
            </form>

            <div class="mt-3 text-center">
                <p>Already have an account? <a href="Login.jsp">Login here</a></p>
                <a href="Welcome.jsp" class="btn btn-danger btn-custom">Back</a>
            </div>
        </div>
    </div>

    <!-- Bootstrap 4 JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
