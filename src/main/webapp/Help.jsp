<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help & Support</title>

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

        .help-container {
            margin-top: 100px;
            text-align: center;
        }

        .help-header {
            font-size: 36px;
            font-weight: bold;
            color: gold;
            margin-bottom: 20px;
        }

        .help-card {
            background: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 10px;
            text-align: center;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(0, 153, 255, 0.3);
            margin: 15px;
        }

        .help-card:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: scale(1.05);
        }

        .help-icon {
            font-size: 50px;
            color: gold;
            margin-bottom: 15px;
        }

        .help-title {
            font-size: 22px;
            font-weight: bold;
            color: #00ccff;
        }

        .faq-container {
            margin-top: 50px;
            text-align: left;
        }

        .faq-question {
            font-size: 18px;
            font-weight: bold;
            color: gold;
            cursor: pointer;
            margin-bottom: 10px;
        }

        .faq-answer {
            font-size: 16px;
            display: none;
            margin-bottom: 15px;
            color: white;
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
            <a class="navbar-brand" href="Dashboard.jsp">Bank </a>
            <a href="Welcome.jsp" class="btn btn-custom ml-auto">Back</a>
        </div>
    </nav>

    <div class="container help-container">
        <h1 class="help-header">Help & Support</h1>

        <div class="row">
            <!-- Contact Support -->
            <div class="col-md-4">
                <div class="help-card">
                    <i class="fas fa-phone-alt help-icon"></i>
                    <h3 class="help-title">Contact Support</h3>
                    <p>Need immediate help? Call us at <strong>+91 7483766226</strong></p>
                </div>
            </div>

            <!-- Email Support -->
            <div class="col-md-4">
                <div class="help-card">
                    <i class="fas fa-envelope help-icon"></i>
                    <h3 class="help-title">Email Us</h3>
                    <p>Send your queries to <strong>sagargowda66226@gmail.com</strong></p>
                </div>
            </div>

            <!-- Live Chat -->
            <div class="col-md-4">
                <div class="help-card">
                    <i class="fas fa-comments help-icon"></i>
                    <h3 class="help-title">Live Chat</h3>
                    <p>Chat with our agent <a href="#">here</a> (24/7 Support)</p>
                </div>
            </div>
        </div>

        <!-- FAQ Section -->
        <div class="faq-container">
            <h2 class="help-header">Frequently Asked Questions (FAQs)</h2>

            <div class="faq-question" onclick="toggleAnswer(1)">
               <i class="fas fa-chevron-circle-right"></i>How can I reset my password?  
            </div>
            <div class="faq-answer" id="faq1">
                You can reset your password by clicking on <a href="ForgotPin.jsp">"Forgot Password"</a> at the login page.
            </div>

            <div class="faq-question" onclick="toggleAnswer(2)">
                <i class="fas fa-chevron-circle-right"></i> How do I check my account balance?
            </div>
            <div class="faq-answer" id="faq2">
               <a href="Login.jsp">Log in</a> to your online banking account and navigate to "Check Balance" to check your balance.
            </div>

            <div class="faq-question" onclick="toggleAnswer(3)">
                <i class="fas fa-chevron-circle-right"></i> Can I transfer money internationally?
            </div>
            <div class="faq-answer" id="faq3">
                Yes, we offer international wire transfers through our online banking portal.
            </div>

            <div class="faq-question" onclick="toggleAnswer(4)">
                <i class="fas fa-chevron-circle-right"></i> What should I do if my card is lost?
            </div>
            <div class="faq-answer" id="faq4">
                Immediately contact our 24/7 support team at <strong>+91 7483766226</strong> to block your card.
            </div>
        </div>
    </div>

    <script>
        function toggleAnswer(num) {
            var answer = document.getElementById("faq" + num);
            if (answer.style.display === "none") {
                answer.style.display = "block";
            } else {
                answer.style.display = "none";
            }
        }
    </script>

</body>
</html>
