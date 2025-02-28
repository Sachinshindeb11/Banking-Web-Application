<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <style>
        body {
            background: #121212;
            color: white;
            font-family: 'Poppins', sans-serif;
        }

        .services-container {
            margin-top: 100px;
            text-align: center;
        }

        .services-header {
            font-size: 36px;
            font-weight: bold;
            color: gold;
            margin-bottom: 20px;
        }

        .service-card {
            background: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 10px;
            text-align: center;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(0, 153, 255, 0.3);
            margin: 15px;
        }

        .service-card:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: scale(1.05);
        }

        .service-icon {
            font-size: 50px;
            color: gold;
            margin-bottom: 15px;
        }

        .service-title {
            font-size: 22px;
            font-weight: bold;
            color: #00ccff;
        }

        .service-description {
            font-size: 16px;
            margin-top: 10px;
        }

        .btn-custom {
            background: gold;
            color: black;
            border-radius: 5px;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn-custom:hover {
            background: darkgoldenrod;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="Dashboard.jsp">Bank</a>
            <a href="Welcome.jsp" class="btn btn-custom ml-auto">Back</a>
        </div>
    </nav>

    <div class="container services-container">
        <h1 class="services-header">Our Banking Services</h1>

        <div class="row">
            <!-- Account Management -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-user-circle service-icon"></i>
                    <h3 class="service-title">Account Management</h3>
                    <p class="service-description">Easily open, close, and manage your bank accounts with secure online access.</p>
                </div>
            </div>

            <!-- Online Banking -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-laptop service-icon"></i>
                    <h3 class="service-title">Online Banking</h3>
                    <p class="service-description">Access your account, pay bills, and transfer money anytime, anywhere.</p>
                </div>
            </div>

            <!-- Loan Services -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-hand-holding-usd service-icon"></i>
                    <h3 class="service-title">Loan Services</h3>
                    <p class="service-description">Apply for personal, home, or business loans with flexible interest rates.</p>
                </div>
            </div>

            <!-- Credit & Debit Cards -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-credit-card service-icon"></i>
                    <h3 class="service-title">Credit & Debit Cards</h3>
                    <p class="service-description">Get instant approval for credit and debit cards with exciting rewards.</p>
                </div>
            </div>

            <!-- Fixed Deposits -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-piggy-bank service-icon"></i>
                    <h3 class="service-title">Fixed Deposits</h3>
                    <p class="service-description">Earn high-interest rates with our safe and secure fixed deposit schemes.</p>
                </div>
            </div>

            <!-- Mobile Banking -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-mobile-alt service-icon"></i>
                    <h3 class="service-title">Mobile Banking</h3>
                    <p class="service-description">Banking on the go! Manage transactions via our mobile banking app.</p>
                </div>
            </div>

            <!-- Money Transfers -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-exchange-alt service-icon"></i>
                    <h3 class="service-title">Money Transfers</h3>
                    <p class="service-description">Send and receive money worldwide with fast and secure transactions.</p>
                </div>
            </div>

            <!-- Investment Services -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-chart-line service-icon"></i>
                    <h3 class="service-title">Investment Services</h3>
                    <p class="service-description">Grow your wealth with our expert investment and financial planning services.</p>
                </div>
            </div>

            <!-- Customer Support -->
            <div class="col-md-4">
                <div class="service-card">
                    <i class="fas fa-headset service-icon"></i>
                    <h3 class="service-title">24/7 Customer Support</h3>
                    <p class="service-description">Our team is available 24/7 to assist you with your banking needs.</p>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
