<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bank.DTO.Customer" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Balance</title>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

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
 
        .balance-card {
            background: rgba(255, 255, 255, 0.9); 
            padding: 30px;
            border-radius: 10px;
            width: 350px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1);
        }

        .balance-amount {
            font-size: 24px;
            font-weight: bold;
            margin: 20px 0;
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
	<% Customer c=(Customer)session.getAttribute("customer");%>
	<div class="overlay"></div>
    <div class="balance-card form">
        <h2>Your Balance</h2>

        <% 

            Double balance = (Double) session.getAttribute("balance"); 
            if (balance == null) {
                balance = 0.0;
            }
        %>
        <p class="balance-amount">Rs. <%=c.getBalance()  %></p>

        <a href="Deposit.jsp" class="btn btn-success btn-custom">Deposit</a>
        <a href="TransferAmount.jsp" class="btn btn-danger btn-custom">Transfer</a>
        <a href="Dashboard.jsp" class="btn btn-secondary btn-custom">Back</a>
    </div>

</body>
</html>