<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicles - Mega City Cab Service</title>
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
            margin: 0 auto;
            overflow: hidden;
        }

        .btn-danger-custom {
            background-color: var(--accent-color);
            border: none;
            padding: 8px 20px;
            transition: all 0.3s;
        }

        .btn-danger-custom:hover {
            background-color: #ff5722;
        }

        footer {
            background: var(--primary-color);
            color: white;
            padding: 50px 0;
            margin-top: 60px;
        }

        .table thead {
            background-color: var(--primary-color);
            color: white;
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
        <h1 class="display-5 mb-3">Vehicle Inventory</h1>
        <p class="lead">Manage fleet vehicles efficiently</p>
    </div>
</section>

<!-- Main Content -->
<div class="container">
    <c:if test="${empty cust}">
        <div class="alert alert-warning text-center">
            <h5 class="mb-0"><i class="fas fa-exclamation-triangle me-2"></i>No vehicles found in the database</h5>
        </div>
    </c:if>

    <div class="form-card p-4">
        <div class="table-responsive">
            <table class="table table-hover align-middle">
                <thead>
                    <tr>
                        <th><i class="fas fa-car me-2"></i>Vehicle Type</th>
                        <th><i class="fas fa-tag me-2"></i>Brand & Model</th>
                        <th><i class="fas fa-plate-car me-2"></i>Number Plate</th>
                        <th><i class="fas fa-barcode me-2"></i>Chassis Number</th>
                        <th><i class="fas fa-tools me-2"></i>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="cus" items="${cust}">
                        <tr>
                            <td>${cus.vehicle}</td>
                            <td>${cus.brand_model}</td>
                            <td>${cus.number_plate}</td>
                            <td>${cus.chassis_no}</td>
                            <td>
                                <form action="delvehicle" method="post" class="d-inline">
                                    <input type="hidden" name="vehicle" value="${cus.vehicle}">
                                    <button type="submit" class="btn btn-danger-custom btn-sm">
                                        <i class="fas fa-trash-alt me-1"></i>Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
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
                    <li><i class="fas fa-map-marker-alt me-2"></i>Kurunegala City Center</li>
                    <li><i class="fas fa-phone me-2"></i>+94 77 123 4567</li>
                    <li><i class="fas fa-envelope me-2"></i>fleet@megacity.lk</li>
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
                <h4>Our Fleet</h4>
                <div class="social-links">
                    <i class="fas fa-shuttle-van fa-2x me-3"></i>
                    <i class="fas fa-taxi fa-2x me-3"></i>
                    <i class="fas fa-bus fa-2x"></i>
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