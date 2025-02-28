<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deposit Money</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        /* Background Styling */
        body {
            background: url('https://img.freepik.com/free-vector/digital-currency-indain-rupee-symbol-background-with-circuit-lines_1017-45128.jpg?t=st=1738669159~exp=1738672759~hmac=f4115a1670ca2a806131e9eeb773369acf2301eb618cc97043cdc7f348400bd4&w=1060') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
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

        /* Card Styling */
        .deposit-card {
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1);
        }
        
        .message1 {
            font-size: small;
            display: flex;
            justify-content: center;
            font-family: calibri;
            color: green; 
        } 
        
        .message2 {
            font-size: small;
            display: flex;
            justify-content: center;
            font-family: calibri; 
            color: red;
        }

        .form-group {
            text-align: left;
        } 

        .btn-custom {
            width: 100%;
            margin-top: 10px;
        }
         
        .form {
            background: rgba(255, 255, 255, 0.9); 
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
        }

        .form:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
	<div class="overlay"></div>
    <div class="deposit-card form">
        <h2>Deposit Money</h2>
        
        <%String depositsuccess = (String) session.getAttribute("depositsuccess");
        if (depositsuccess != null) { %>
            <h3 class="message1"><%= depositsuccess %></h3>
        <% } %>
        
        <% String depositfailure = (String) session.getAttribute("depositfailure");
        if (depositfailure != null) { %>
            <h3 class="message2"><%= depositfailure %></h3>
        <% } %>

        <form action="Deposit" method="POST">
            <div class="form-group">
                <label for="amount">Enter Amount:</label>
                <input type="number" class="form-control" name="amount" placeholder="Enter amount" required>
            </div>

            <div class="form-group">
                <label for="pin">Enter PIN:</label>
                <input type="password" class="form-control" name="pin" placeholder="Enter PIN" required>
            </div>

            <button type="submit" class="btn btn-success btn-custom">Deposit</button>
            <a href="Dashboard.jsp" class="btn btn-secondary btn-custom">Back</a>
        </form>
    </div>

</body>
</html>
