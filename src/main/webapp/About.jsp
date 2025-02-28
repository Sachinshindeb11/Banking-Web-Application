<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>

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

        .about-container {
            margin-top: 100px;
            text-align: center;
        }

        .about-header {
            font-size: 36px;
            font-weight: bold;
            color: gold;
            margin-bottom: 20px;
        }

        .about-card {
            background: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 10px;
            text-align: center;
            transition: 0.3s;
            box-shadow: 0 4px 15px rgba(0, 153, 255, 0.3);
            margin: 15px;
        }

        .about-card:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: scale(1.05);
        }

        .about-icon {
            font-size: 50px;
            color: gold;
            margin-bottom: 15px;
        }

        .about-title {
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
            <a class="navbar-brand" href="Dashboard.jsp">Bank</a>
            <a href="Welcome.jsp" class="btn btn-custom ml-auto">Back</a>
        </div>
    </nav>

    <div class="container about-container">
        <h1 class="about-header">About Us</h1>

        <div class="row">
            <!-- Company Overview -->
            <div class="col-md-4">
                <div class="about-card">
                    <i class="fas fa-building about-icon"></i>
                    <h3 class="about-title">Our Company</h3>
                    <p>We are a leading provider of innovative banking solutions, committed to enhancing the customer experience.</p>
                </div>
            </div>

            <!-- Mission Statement -->
            <div class="col-md-4">
                <div class="about-card">
                    <i class="fas fa-bullseye about-icon"></i>
                    <h3 class="about-title">Our Mission</h3>
                    <p>To provide secure, efficient, and innovative banking services, empowering customers to achieve their financial goals.</p>
                </div>
            </div>

            <!-- Values -->
            <div class="col-md-4">
                <div class="about-card">
                    <i class="fas fa-handshake about-icon"></i>
                    <h3 class="about-title">Our Values</h3>
                    <p>Integrity, Innovation, Customer-centricity, and Excellence guide our operations and customer relations.</p>
                </div>
            </div>
        </div>

        <!-- FAQ Section -->
        <div class="faq-container">
            <h2 class="about-header">Frequently Asked Questions (FAQs)</h2>

            <div class="faq-question" onclick="toggleAnswer(1)">
                <i class="fas fa-chevron-circle-right"></i> What is your company's mission?
            </div>
            <div class="faq-answer" id="faq1">
                Our mission is to provide secure, innovative, and customer-focused banking solutions to enhance financial well-being.
            </div>

            <div class="faq-question" onclick="toggleAnswer(2)">
                <i class="fas fa-chevron-circle-right"></i> How do we ensure customer security?
            </div>
            <div class="faq-answer" id="faq2">
                We use the latest encryption technologies, multi-factor authentication, and continuous monitoring to ensure your security.
            </div>

            <div class="faq-question" onclick="toggleAnswer(3)">
                <i class="fas fa-chevron-circle-right"></i> Can I open an account online?
            </div>
            <div class="faq-answer" id="faq3">
                Yes, you can easily open an account online through our secure banking portal. Visit our website to get started.
            </div>

            <div class="faq-question" onclick="toggleAnswer(4)">
                <i class="fas fa-chevron-circle-right"></i> How can I contact customer support?
            </div>
            <div class="faq-answer" id="faq4">
                You can contact our support team via phone at <strong>1800-123-4567</strong> or email at <strong>support@bank.com</strong>.
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
