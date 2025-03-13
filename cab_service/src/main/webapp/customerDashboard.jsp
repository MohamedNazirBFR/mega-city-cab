
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Mega City Cab Service</title>
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
                        url('https://images.unsplash.com/photo-1502872364588-894d7d6ddfab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');
            background-size: cover;
            background-position: center;
            padding: 120px 0;
            margin-bottom: 60px;
        }

        .vehicle-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            overflow: hidden;
        }

        .vehicle-card:hover {
            transform: translateY(-10px);
        }

        .vehicle-img {
            height: 200px;
            object-fit: cover;
            transition: transform 0.3s;
        }

        .price-badge {
            background: var(--secondary-color);
            color: white;
            padding: 8px 20px;
            border-radius: 20px;
            position: absolute;
            bottom: -20px;
            right: 20px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
        }

        .btn-primary {
            background-color: var(--primary-color);
            border: none;
            padding: 12px 30px;
        }

        .btn-primary:hover {
            background-color: #1d3a52;
        }

        footer {
            background: var(--primary-color);
            color: white;
            padding: 50px 0;
            margin-top: 60px;
        }
        .admin-option {
        border: none;
        border-radius: 15px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        background: linear-gradient(145deg, rgba(42,78,110,0.1), rgba(58,183,149,0.1));
        padding: 20px;
        min-height: 280px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .admin-option:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
    }

    .admin-option img {
        transition: transform 0.3s ease;
        background: var(--primary-color);
        padding: 15px;
        border-radius: 50%;
        margin-bottom: 20px;
    }

    .admin-option:hover img {
        transform: scale(1.1);
    }

    .btn-success {
        background-color: var(--secondary-color);
        border: none;
        padding: 15px 40px;
        font-size: 1.1rem;
        border-radius: 30px;
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
    }

    .btn-success::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(
            120deg,
            transparent,
            rgba(255, 255, 255, 0.3),
            transparent
        );
        transition: all 0.5s;
    }

    .btn-success:hover {
        background-color: #2e9c81;
        transform: translateY(-3px);
        box-shadow: 0 5px 15px rgba(58, 183, 149, 0.4);
    }

    .btn-success:hover::before {
        left: 100%;
    }

    .book-now-section {
        margin: 40px 0;
        position: relative;
        z-index: 1;
    }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#" style="color: var(--primary-color);">
            <i class="fa-solid fa-taxi me-2"></i>Mega City Cabs
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
                <li class="nav-item"><a class="btn btn-primary ms-3" href="Billing.jsp">Book Now</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section text-white">
    <div class="container text-center">
        <h1 class="display-4 mb-3"> MEGA CITY CABS </h1>
        <p class="lead">Safe, Reliable, and Affordable Transportation Solutions</p>
    </div>
</section>

<!-- Fleet Section -->
<div class="container">
    <div class="text-center mb-5">
        <h2>Our Fleet</h2>
        <p class="text-muted">Choose the perfect vehicle for your journey</p>
    </div>
    <div class="row g-4">
        <div class="col-lg-3 col-md-6">
            <div class="vehicle-card">
                <div class="position-relative">
                    <img src="images/car.jpg" class="card-img-top" alt="Car">
                         
                    <div class="price-badge">Rs 100/km</div>
                </div>
                <div class="card-body text-center pt-4">
                    <h5>Car</h5>
                    <p class="text-muted mb-4">Up to 4 passengers</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="vehicle-card">
                <div class="position-relative">
                    <img src="images/van.png" class="card-img-top" alt="Van">
                       
                    <div class="price-badge">Rs 140/km</div>
                </div>
                <div class="card-body text-center pt-4">
                    <h5>Van</h5>
                    <p class="text-muted mb-4">Up to 8 passengers</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="vehicle-card">
                <div class="position-relative">
                   <img src="images/mini van.jpg" class="card-img-top" alt="Mini Van"> 
                        
                    <div class="price-badge">Rs 120/km</div>
                </div>
                <div class="card-body text-center pt-4">
                    <h5>Mini Van</h5>
                    <p class="text-muted mb-4">Up to 6 passengers</p>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="vehicle-card">
                <div class="position-relative">
                    <img src="images/bus.jpeg" class="card-img-top" alt="Bus"> 
                        
                    <div class="price-badge">Rs 180/km</div>
                </div>
                <div class="card-body text-center pt-4">
                    <h5>Bus</h5>
                    <p class="text-muted mb-4">Up to 15 passengers</p>
                </div>
            </div>
        </div>
        
    </div>
</div>
<div class="container mt-5 book-now-section">
    <div class="row justify-content-center g-4">
        <!-- View Vehicles Section -->
        <div class="col-md-5 col-lg-4">
            <div class="card text-center admin-option h-100">
                <div class="card-body">
                    <img src="images/viewv.png" class="img-fluid mb-3" alt="View Vehicles Icon" width="100">
                    <h4 class="card-title mb-4" style="color: var(--primary-color);">Explore Our Fleet</h4>
                    <form action="vehiclestb" method="post">
                        <button type="submit" class="btn btn-primary btn-lg">
                            <i class="fas fa-car-side me-2"></i>Choose Vehicle
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Book Now Section -->
        <div class="col-md-5 col-lg-4 d-flex align-items-center justify-content-center">
            <div class="text-center">
                <h3 class="mb-4" style="color: var(--primary-color);">Ready to Ride?</h3>
                <a href="booking.jsp" class="btn btn-success btn-lg">
                    <i class="fas fa-calendar-check me-2"></i>Book Now
                </a>
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
                    <li><i class="fas fa-map-marker-alt me-2"></i>Kurunegala City Center</li>
                    <li><i class="fas fa-phone me-2"></i>+94 77 123 4567</li>
                    <li><i class="fas fa-envelope me-2"></i>info@megacitycabs.lk</li>
                </ul>
            </div>
            <div class="col-md-4">
                <h4>Quick Links</h4>
                <ul class="list-unstyled">
                    <li><a href="index.jsp" class="text-white text-decoration-none">Home</a></li>
                    <li><a href="about.jsp" class="text-white text-decoration-none">About Us</a></li>
                    <li><a href="Billing.jsp" class="text-white text-decoration-none">Book Now</a></li>
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
            <p>&copy; 2023 Mega City Cab Service. All rights reserved.</p>
        </div>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>