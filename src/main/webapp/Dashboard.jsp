<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bank.DTO.Customer" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Your Dashboard</title>

    <!-- Bootstrap 4 CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Optional: Custom styles -->
    <style>
        .dashboard-container {
            margin-top: 50px;
        }
        .dashboard-card {
            margin-bottom: 30px;
        }
        
        .dashboard-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease-in;
            transition: all 1s easeout;
        }
        
        .dashboard-card .card-body {
            padding: 20px;
            text-align: center;
        }
        .dashboard-card h5 {
            margin-bottom: 15px;
        }
        .btn-custom {
            width: 100%;
            font-size: 16px;
            padding: 15px;
        }
        .container {
            padding: 30px;
        }
        h2 {
            margin-bottom: 30px;
            color:white;
        }
        p{color:white;} 
        
        
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
        
    </style>
</head>
<body>
	<div class="overlay"></div>
    <div class="container">
        <div class="dashboard-container">
        <%Customer c=(Customer)session.getAttribute("customer"); %>
            <h2 class="text-center">Welcome! <%=c.getName() %></h2>
            <p class="text-center mb-5">Please choose an operation from the options below:</p>

            <!-- Option Cards -->
            <div class="row">
                <!-- Check Balance Card -->
                <div class="col-md-4">
                    <div class="card dashboard-card">
                        <div class="card-body">
                            <h5 class="card-title">Check Balance</h5>
                            <a href="Balance.jsp" class="btn btn-primary btn-custom">View Balance</a>
                        </div>
                    </div>
                </div>

                <!-- Deposit Card -->
                <div class="col-md-4">
                    <div class="card dashboard-card">
                        <div class="card-body">
                            <h5 class="card-title">Deposit</h5>
                            <a href="Deposit.jsp" class="btn btn-success btn-custom">Deposit Funds</a>
                        </div>
                    </div>
                </div>

                <!-- Transfer Amount Card -->
                <div class="col-md-4">
                    <div class="card dashboard-card">
                        <div class="card-body">
                            <h5 class="card-title">Transfer Amount</h5>
                            <a href="TransferAmount.jsp" class="btn btn-info btn-custom">Transfer Funds</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Passbook Card -->
                <div class="col-md-4">
                    <div class="card dashboard-card">
                        <div class="card-body">
                            <h5 class="card-title">Passbook</h5>
                            <a href="Passbook.jsp" class="btn btn-warning btn-custom">View Passbook</a>
                        </div>
                    </div>
                </div>

                <!-- Update Account Card -->
                <div class="col-md-4">
                    <div class="card dashboard-card">
                        <div class="card-body">
                            <h5 class="card-title">Update Your Account</h5>
                            <a href="Update.jsp" class="btn btn-secondary btn-custom">Update Details</a>
                        </div>
                    </div>
                </div>

                <!-- Reset PIN Card -->
                <div class="col-md-4">
                    <div class="card dashboard-card">
                        <div class="card-body">
                            <h5 class="card-title">Reset PIN</h5>
                            <a href="ForgotPin.jsp" class="btn btn-danger btn-custom">Reset Your PIN</a>
                        </div>
                    </div>
                </div>
            </div>
			
			
			<%if(c.getAccno()==3){ %>
                <div style="margin:auto;" class="col-md-4">
                    <div class="card dashboard-card">
                        <div class="card-body">
                            <h5 class="card-title">View</h5>
                            <a href="Admin.jsp" class="btn btn-danger btn-custom">View All Users</a>
                        </div>
                    </div>
                </div>
                <%} %>
            <!-- Go Back to Main Menu -->
            <div class="row mt-4">
                <div class="col-12">
                
                   <form action="logout" method="post" ><button type="submit" class="btn btn-primary btn-custom">LOG OUT</button></form> 
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 4 JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
