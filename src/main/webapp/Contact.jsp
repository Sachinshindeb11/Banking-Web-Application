<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Admin</title>

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

        .contact-container {
            margin-top: 100px;
            text-align: center;
        }

        .contact-card {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 10px;
            width: 80%;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 4px 15px rgba(255, 215, 0, 0.3);
        }

        .contact-card h2 {
            color: gold;
        }

        .contact-info {
            margin-top: 20px;
        }

        .contact-info p {
            font-size: 18px;
        }

        .contact-form {
            margin-top: 30px;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.1);
            border: none;
            color: white;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            outline: none;
            box-shadow: 0 0 10px rgba(255, 215, 0, 0.5);
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

        .social-icons a {
            color: gold;
            font-size: 24px;
            margin: 10px;
            transition: 0.3s;
        }

        .social-icons a:hover {
            color: darkgoldenrod;
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

    <div class="container contact-container">
        <div class="contact-card">
            <h2>Contact Admin</h2>

            <div class="contact-info">
                <p><i class="fas fa-envelope"></i> Email: <strong>Sachin@gmail.com</strong></p>
                <p><i class="fas fa-phone"></i> Phone: <strong>+91 987654321</strong></p>
                <p><i class="fas fa-map-marker-alt"></i> Address: <strong>Bengaluru</strong></p>
            </div>

            <!-- Contact Form -->
            <form class="contact-form">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Your Name">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="Your Email">
                </div>
                <div class="form-group">
                    <textarea class="form-control" rows="4" placeholder="Your Message"></textarea>
                </div>
                <button type="submit" class="btn btn-custom btn-block">Send Message</button>
            </form>

            <!-- Social Media Links -->
            <div class="social-icons mt-4">
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
    </div>

</body>
</html>
