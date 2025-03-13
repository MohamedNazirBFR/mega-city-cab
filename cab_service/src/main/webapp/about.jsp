<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Mega City Cab Service</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #2A4E6E;
            --secondary-color: #3AB795;
            --accent-color: #FF7F50;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
        }

        .navbar {
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        }

        .hero-section {
            background: linear-gradient(rgba(42, 78, 110, 0.8), rgba(42, 78, 110, 0.8)),
                        url('https://images.unsplash.com/photo-1502872364588-894d7d6ddfab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');
            background-size: cover;
            background-position: center;
            padding: 120px 0;
            margin-bottom: 60px;
        }

        .feature-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            background: white;
            padding: 30px;
            margin-bottom: 30px;
        }

        .icon-circle {
            width: 70px;
            height: 70px;
            background: var(--secondary-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
        }

        .benefits-list {
            list-style: none;
            padding-left: 0;
        }

        .benefits-list li {
            padding: 15px 0;
            border-bottom: 1px solid #eee;
        }

        .benefits-list li:last-child {
            border-bottom: none;
        }

        footer {
            background: var(--primary-color);
            color: white;
            padding: 50px 0;
            margin-top: 60px;
        }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container">
        <a class="navbar-brand fw-bold" href="index.jsp" style="color: var(--primary-color);">
            <i class="fa-solid fa-taxi me-2"></i>Mega City Cabs
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="reg.jsp">Register</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section text-white">
    <div class="container text-center">
        <h1 class="display-4 mb-3">About Mega City Cab Service</h1>
        <p class="lead">Your Reliable Travel Partner Since 2015</p>
    </div>
</section>

<!-- Main Content -->
<div class="container">
    <!-- Our Story Section -->
    <div class="feature-card">
        <div class="icon-circle">
            <i class="fas fa-history text-white fa-2x"></i>
        </div>
        <h2 class="text-center mb-4">Our Story</h2>
        <p class="text-muted text-center">
            Founded in 2015, Mega City Cab Service has revolutionized urban transportation in Colombo. 
            What began as a small fleet of 10 vehicles has grown into one of the most trusted names 
            in Sri Lankan transportation, serving over 500,000 satisfied customers annually.
        </p>
    </div>

    <!-- Why Choose Us Section -->
    <div class="feature-card">
        <h2 class="text-center mb-5">Why Choose Us?</h2>
        <ul class="benefits-list">
            <li><i class="fas fa-user-tie me-3 text-primary"></i>Professional Licensed Drivers</li>
            <li><i class="fas fa-wallet me-3 text-primary"></i>Transparent Pricing with No Hidden Fees</li>
            <li><i class="fas fa-clock me-3 text-primary"></i>24/7 Availability </li>
            <li><i class="fas fa-map-marker-alt me-3 text-primary"></i>Real-Time GPS Tracking</li>
            <li><i class="fas fa-shield-alt me-3 text-primary"></i>Fully Insured Vehicles</li>
        </ul>
    </div>

    <!-- Fleet Section -->
    <div class="feature-card">
        <div class="icon-circle">
            <i class="fas fa-car-side text-white fa-2x"></i>
        </div>
        <h2 class="text-center mb-4">Our Fleet</h2>
        <div class="row text-center g-4">
            <div class="col-md-3">
                <i class="fas fa-car fa-3x text-primary mb-3"></i>
                <h5>Car</h5>
                <p class="text-muted">Perfect for individual travel</p>
            </div>
            <div class="col-md-3">
                <i class="fas fa-van-shuttle fa-3x text-primary mb-3"></i>
                <h5>Van</h5>
                <p class="text-muted">Spacious 8-seater vehicles</p>
            </div>
            <div class="col-md-3">
                <i class="fas fa-truck-pickup fa-3x text-primary mb-3"></i>
                <h5>Mini Van</h5>
                <p class="text-muted">Group transportation solution</p>
            </div>
            <div class="col-md-3">
                <i class="fas fa-bus fa-3x text-primary mb-3"></i>
                <h5>Bus</h5>
                <p class="text-muted">Premium travel experience</p>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row g-4">
            <div class="col-md-4">
                <h4>Contact Us</h4>
                <ul class="list-unstyled">
                    <li><i class="fas fa-map-marker-alt me-2"></i>Colombo City Center</li>
                    <li><i class="fas fa-phone me-2"></i>+94 77 123 4567</li>
                    <li><i class="fas fa-envelope me-2"></i>info@megacity.lk</li>
                </ul>
            </div>
            <div class="col-md-4">
                <h4>Quick Links</h4>
                <ul class="list-unstyled">
                    <li><a href="index.jsp" class="text-white text-decoration-none">Home</a></li>
                    <li><a href="login.jsp" class="text-white text-decoration-none">Login</a></li>
                    <li><a href="reg.jsp" class="text-white text-decoration-none">Register</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h4>Follow Us</h4>
                <div class="social-links">
                    <a href="#" class="text-white me-3"><i class="fab fa-facebook fa-2x"></i></a>
                    <a href="#" class="text-white me-3"><i class="fab fa-twitter fa-2x"></i></a>
                    <a href="#" class="text-white me-3"><i class="fab fa-instagram fa-2x"></i></a>
                </div>
            </div>
        </div>
        <hr>
        <div class="text-center pt-3">
            <p>&copy; 2025 Mega City Cab Service. All rights reserved.</p>
        </div>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>