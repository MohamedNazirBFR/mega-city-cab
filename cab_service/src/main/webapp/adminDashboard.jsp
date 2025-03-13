<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Mega City Cab Service</title>
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
            padding: 80px 0;
            margin-bottom: 40px;
        }

        .admin-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            background: white;
            height: 100%;
        }

        .admin-card:hover {
            transform: translateY(-5px);
        }

        .card-icon {
            width: 80px;
            height: 80px;
            background: var(--secondary-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: -40px auto 20px;
        }

        .btn-admin {
            background-color: var(--primary-color);
            color: white;
            padding: 8px 20px;
            border-radius: 8px;
            transition: all 0.3s;
        }

        .btn-admin:hover {
            background-color: #1d3a52;
            color: white;
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
        <a class="navbar-brand fw-bold" href="#" style="color: var(--primary-color);">
            <i class="fa-solid fa-taxi me-2"></i>Mega City Admin
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp"><i class="fas fa-home me-2"></i>Home</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp"><i class="fas fa-info-circle me-2"></i>About</a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section text-white">
    <div class="container text-center">
        <h1 class="display-5 mb-3">Admin Dashboard</h1>
        <p class="lead">Manage your transportation operations efficiently</p>
    </div>
</section>

<!-- Main Content -->
<div class="container">
    <!-- Add Section -->
    <div class="row g-4 mb-5">
        <h3 class="text-center mb-4"><i class="fas fa-plus-circle me-2"></i>Add New</h3>
        <div class="col-md-4">
            <div class="admin-card text-center p-4">
                <div class="card-icon">
                    <i class="fas fa-user-plus fa-2x text-white"></i>
                </div>
                <h5>Add Users</h5>
                <p class="text-muted small mb-4">Create new customer accounts</p>
                <a href="reg.jsp" class="btn btn-admin">Manage Users</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="admin-card text-center p-4">
                <div class="card-icon">
                    <i class="fas fa-car-side fa-2x text-white"></i>
                </div>
                <h5>Add Vehicles</h5>
                <p class="text-muted small mb-4">Expand your fleet inventory</p>
                <a href="addv.jsp" class="btn btn-admin">Manage Vehicles</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="admin-card text-center p-4">
                <div class="card-icon">
                    <i class="fas fa-id-card fa-2x text-white"></i>
                </div>
                <h5>Add Drivers</h5>
                <p class="text-muted small mb-4">Register new drivers</p>
                <a href="driver.jsp" class="btn btn-admin">Manage Drivers</a>
            </div>
        </div>
    </div>

    <!-- View Section -->
    <div class="row g-4 mb-5">
        <h3 class="text-center mb-4"><i class="fas fa-eye me-2"></i>View & Delete</h3>
        <div class="col-md-4">
            <div class="admin-card text-center p-4">
                <div class="card-icon">
                    <i class="fas fa-users fa-2x text-white"></i>
                </div>
                <h5>View Users</h5>
                <p class="text-muted small mb-4">Manage customer accounts</p>
                <form action="regstb" method="post">
                    <button type="submit" class="btn btn-admin w-100">View Users</button>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="admin-card text-center p-4">
                <div class="card-icon">
                    <i class="fas fa-car fa-2x text-white"></i>
                </div>
                <h5>View Vehicles</h5>
                <p class="text-muted small mb-4">Manage fleet inventory</p>
                <form action="vehiclestb" method="post">
                    <button type="submit" class="btn btn-admin w-100">View Vehicles</button>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="admin-card text-center p-4">
                <div class="card-icon">
                    <i class="fas fa-id-badge fa-2x text-white"></i>
                </div>
                <h5>View Drivers</h5>
                <p class="text-muted small mb-4">Manage driver records</p>
                <form action="driverstb" method="post">
                    <button type="submit" class="btn btn-admin w-100">View Drivers</button>
                </form>
            </div>
        </div>
    </div>

   <!-- Update Section -->
<div class="row g-4">
    <h3 class="text-center mb-4"><i class="fas fa-edit me-2"></i>Update Records</h3>

    <!-- Update Users -->
    <div class="col-md-4">
        <div class="admin-card text-center p-4">
            <div class="card-icon">
                <i class="fas fa-user-edit fa-2x text-white"></i>
            </div>
            <h5>Update Users</h5>
            <p class="text-muted small mb-4">Modify customer information</p>
            <a href="upreg.jsp" class="btn btn-admin">Update Users</a>  <!-- Updated the link -->
        </div>
    </div>

    <!-- Update Vehicles -->
    <div class="col-md-4">
        <div class="admin-card text-center p-4">
            <div class="card-icon">
                <i class="fas fa-tools fa-2x text-white"></i>
            </div>
            <h5>Update Vehicles</h5>
            <p class="text-muted small mb-4">Edit vehicle details</p>
            <a href="upv.jsp" class="btn btn-admin">Update Vehicles</a>
        </div>
    </div>

    <!-- Update Drivers -->
    <div class="col-md-4">
        <div class="admin-card text-center p-4">
            <div class="card-icon">
                <i class="fas fa-id-card-alt fa-2x text-white"></i>
            </div>
            <h5>Update Drivers</h5>
            <p class="text-muted small mb-4">Modify driver information</p>
            <a href="updriver.jsp" class="btn btn-admin">Update Drivers</a>
        </div>
    </div>
</div>

</div>


<!-- Footer -->
<footer>
    <div class="container">
        <div class="row g-4">
            <div class="col-md-4">
                <h4>Contact Support</h4>
                <ul class="list-unstyled">
                    <li><i class="fas fa-map-marker-alt me-2"></i>Kurunegala City Center</li>
                    <li><i class="fas fa-phone me-2"></i>+94 77 123 4567</li>
                    <li><i class="fas fa-envelope me-2"></i>support@megacity.lk</li>
                </ul>
            </div>
            <div class="col-md-4">
                <h4>Quick Links</h4>
                <ul class="list-unstyled">
                    <li><a href="index.jsp" class="text-white text-decoration-none">Home</a></li>
                    <li><a href="about.jsp" class="text-white text-decoration-none">About</a></li>
                    <li><a href="#" class="text-white text-decoration-none">Documentation</a></li>
                </ul>
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