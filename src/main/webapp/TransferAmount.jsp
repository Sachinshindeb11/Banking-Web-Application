<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Money</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        /* Background Styling */
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
        .withdraw-card {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1);
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
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="withdraw-card form">
        <h2>Transfer Money</h2>
        
        <%String transfersuccess = (String) session.getAttribute("transfersuccess");
        if (transfersuccess != null) { %>
            <h3 class="message1"><%= transfersuccess %></h3>
        <% } %>
        
        <% String transferfailure = (String) session.getAttribute("transferfailure");
        if (transferfailure != null) { %>
            <h3 class="message2"><%= transferfailure %></h3>
        <% } %>

        <form action="TransferAmount" method="POST">
        	<div class="form-group">
                <label for="amount">Enter Beneficiary Account number:</label>
                <input type="number" class="form-control" name="account" placeholder="Enter Account number" required>
            </div>
        	
            <div class="form-group">
                <label for="amount">Enter Amount:</label>
                <input type="number" class="form-control" name="amount" placeholder="Enter amount" required>
            </div>

            <div class="form-group">
                <label for="pin">Enter PIN:</label>
                <input type="password" class="form-control" name="pin" placeholder="Enter PIN" required>
            </div>

            <button type="submit" class="btn btn-danger btn-custom">Transfer</button>
            <a href="Dashboard.jsp" class="btn btn-secondary btn-custom">Back</a>
        </form>
    </div>
</body>
</html>
