<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Driver - Mega City Cab Service</title>
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
            background-color: #f8f9fa;
            padding-top: 80px;
        }

        .navbar {
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        }

        .hero-section {
            background: linear-gradient(rgba(42, 78, 110, 0.8), rgba(42, 78, 110, 0.8)),
                        url('https://images.unsplash.com/photo-1553440569-bcc63803a83d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');
            background-size: cover;
            background-position: center;
            padding: 100px 0;
            margin-bottom: 40px;
        }

        .form-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            background: white;
            max-width: 600px;
            margin: 0 auto;
        }

        .profile-img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--primary-color);
            margin: -60px auto 20px;
        }

        .btn-primary-custom {
            background-color: var(--primary-color);
            border: none;
            padding: 12px 30px;
            transition: all 0.3s;
        }

        .btn-primary-custom:hover {
            background-color: #1d3a52;
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
                <li class="nav-item"><a class="nav-link" href="index.jsp"><i class="fas fa-home me-2"></i>Home</a></li>
                <li class="nav-item"><a class="nav-link" href="driverstb"><i class="fas fa-list me-2"></i>Drivers List</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp"><i class="fas fa-info-circle me-2"></i>About</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section text-white">
    <div class="container text-center">
        <h1 class="display-5 mb-3">Update Driver Information</h1>
        <p class="lead">Maintain accurate driver records for better service</p>
    </div>
</section>

<!-- Main Content -->
<div class="container">
    <div class="form-card p-4 p-md-5">
        <div class="text-center mb-4">
            <H2>Update Info</H2>
            <div class="badge bg-success mb-3"></div>
        </div>

        <form method="post" action="driverup">
            <div class="row g-3 mb-4">
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-id-card me-2"></i>Driver ID</label>
                    <input type="text" class="form-control" name="driver_id" placeholder="Enter Driver ID" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-user me-2"></i>Full Name</label>
                    <input type="text" class="form-control" name="name" placeholder="Enter Full Name" required>
                </div>
            </div>

            <div class="row g-3 mb-4">
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-id-badge me-2"></i>License Number</label>
                    <input type="text" class="form-control" name="license_no" placeholder="Enter License Number" required>
                </div>
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-phone me-2"></i>Contact Number</label>
                    <input type="tel" class="form-control" name="contact_no" placeholder="Enter Contact Number" required>
                </div>
            </div>

            <div class="mb-4">
                <label class="form-label"><i class="fas fa-map-marker-alt me-2"></i>Address</label>
                <input type="text" class="form-control" name="address" placeholder="Enter Full Address" required>
            </div>

            <div class="d-grid mt-5">
                <button type="submit" class="btn btn-primary-custom btn-lg">
                    <i class="fas fa-save me-2"></i>Update Profile
                </button>
            </div>
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row g-4">
            <div class="col-md-4">
                <h4>Contact Us</h4>
                <ul class="list-unstyled">
                    <li><i class="fas fa-map-marker-alt me-2"></i>Kurunegala City Center</li>
                    <li><i class="fas fa-phone me-2"></i>+94 77 123 4567</li>
                    <li><i class="fas fa-envelope me-2"></i>hr@megacity.lk</li>
                </ul>
            </div>
            <div class="col-md-4">
                <h4>Quick Links</h4>
                <ul class="list-unstyled">
                    <li><a href="index.jsp" class="text-white text-decoration-none">Home</a></li>
                    <li><a href="driver.jsp" class="text-white text-decoration-none">Add Driver</a></li>
                    <li><a href="driverstb" class="text-white text-decoration-none">Driver List</a></li>
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