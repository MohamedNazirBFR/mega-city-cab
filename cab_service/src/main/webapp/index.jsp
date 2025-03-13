<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega City Cab Service</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary: #1a365d;
            --secondary: #2c5282;
            --accent: #4299e1;
            --light: #f7fafc;
            --dark: #1a202c;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            line-height: 1.6;
            color: var(--dark);
            background-color: var(--light);
        }

        /* Navigation */
        .navbar {
            background: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(10px);
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.05);
            padding: 1rem 0;
        }

        .navbar-brand {
            font-weight: 700;
            color: var(--primary) !important;
            letter-spacing: -0.5px;
            font-size: 1.25rem;
        }

        .nav-link {
            font-weight: 500;
            color: var(--secondary) !important;
            transition: all 0.3s ease;
            padding: 0.5rem 1rem !important;
        }

        .nav-link:hover {
            color: var(--accent) !important;
            transform: translateY(-2px);
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            padding: 8rem 0 6rem;
            clip-path: ellipse(100% 100% at 50% 0%);
            color: white;
            text-align: center;
        }

        .hero h1 {
            font-weight: 800;
            font-size: 3rem;
            letter-spacing: -1px;
            line-height: 1.1;
            margin-bottom: 1.5rem;
        }

        /* Sections */
        .section {
            padding: 5rem 0;
        }

        .section-title {
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 3rem;
            position: relative;
            text-align: center;
        }

        .section-title:after {
            content: '';
            position: absolute;
            bottom: -1rem;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 3px;
            background: var(--accent);
        }

        /* Vehicle Cards */
        .vehicle-card {
            border: none;
            border-radius: 1rem;
            overflow: hidden;
            transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            background: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .vehicle-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.08);
        }

        .vehicle-image {
            height: 240px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .vehicle-card:hover .vehicle-image {
            transform: scale(1.05);
        }

        .vehicle-price {
            font-size: 1.25rem;
            font-weight: 700;
            color: var(--accent);
        }

        /* Feature Cards */
        .feature-card {
            background: white;
            border-radius: 1rem;
            padding: 2rem;
            transition: all 0.3s ease;
            border: 1px solid rgba(0, 0, 0, 0.05);
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.06);
        }

        .feature-icon {
            font-size: 2.5rem;
            color: var(--accent);
            margin-bottom: 1.5rem;
        }

        /* Company Info */
        .company-info {
            background: white;
            border-radius: 1rem;
            padding: 3rem;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.05);
        }

        /* Footer */
        .footer {
            background: var(--primary);
            color: white;
            padding: 4rem 0 2rem;
            margin-top: 6rem;
            clip-path: polygon(0 20px, 100% 0, 100% 100%, 0% 100%);
        }

        @media (max-width: 768px) {
            .hero {
                padding: 6rem 0 4rem;
            }
            
            .hero h1 {
                font-size: 2.25rem;
            }
            
            .section {
                padding: 3rem 0;
            }
            
            .company-info {
                padding: 2rem;
            }
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .animate {
            animation: fadeIn 0.6s ease forwards;
        }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Mega City Cab Service</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="reg.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero">
    <div class="container">
        <h1 class="animate">Premium City Transportation</h1>
        <p class="lead mb-4 animate" style="animation-delay: 0.1s">Safe, reliable, and comfortable travel solutions</p>
        <a href="login.jsp" class="btn btn-light btn-lg px-5 animate" style="animation-delay: 0.2s">Book Now</a>
    </div>
</section>

<!-- Why Choose Us -->
<section class="section bg-light">
    <div class="container">
        <h2 class="section-title animate">Why Choose Us</h2>
        <div class="row g-4">
            <div class="col-md-4 animate">
                <div class="feature-card">
                    <i class="fas fa-star feature-icon"></i>
                    <h4>Quality Service</h4>
                    <p class="text-muted">We ensure high-quality services tailored to your needs</p>
                </div>
            </div>
            <div class="col-md-4 animate" style="animation-delay: 0.1s">
                <div class="feature-card">
                    <i class="fas fa-headset feature-icon"></i>
                    <h4>24/7 Support</h4>
                    <p class="text-muted">Round-the-clock customer support for all your needs</p>
                </div>
            </div>
            <div class="col-md-4 animate" style="animation-delay: 0.2s">
                <div class="feature-card">
                    <i class="fas fa-tag feature-icon"></i>
                    <h4>Fair Pricing</h4>
                    <p class="text-muted">Competitive rates with transparent pricing</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Our Fleet -->
<section class="section">
    <div class="container">
        <h2 class="section-title animate">Our Fleet</h2>
        <div class="row g-4">
            <!-- Correct order with proper vehicle-card styling -->
            <div class="col-md-3 col-sm-6 animate">
                <div class="vehicle-card h-100">
                    <img src="images/mini van.jpg" alt="Mini Van" class="vehicle-image w-100">
                    <div class="card-body p-4">
                        <h4>Mini Van</h4>
                        <p class="text-muted">Ideal for family or business group trips.</p>
                        <p class="vehicle-price">Rs 120 per Km</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 animate" style="animation-delay: 0.1s">
                <div class="vehicle-card h-100">
                    <img src="images/car.jpg" alt="Car" class="vehicle-image w-100">
                    <div class="card-body p-4">
                        <h4>Car</h4>
                        <p class="text-muted">Perfect for personal and short trips.</p>
                        <p class="vehicle-price">Rs 100 per Km</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 animate" style="animation-delay: 0.2s">
                <div class="vehicle-card h-100">
                    <img src="images/van.png" alt="Van" class="vehicle-image w-100">
                    <div class="card-body p-4">
                        <h4>Van</h4>
                        <p class="text-muted">Spacious and comfortable for group travel.</p>
                        <p class="vehicle-price">Rs 140 per Km</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 animate" style="animation-delay: 0.3s">
                <div class="vehicle-card h-100">
                    <img src="images/bus.jpeg" alt="Bus" class="vehicle-image w-100">
                    <div class="card-body p-4">
                        <h4>Bus</h4>
                        <p class="text-muted">Great for large groups and events.</p>
                        <p class="vehicle-price">Rs 180 per Km</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Company Info -->
<section class="section bg-light">
    <div class="container">
        <div class="company-info animate">
            <h3 class="mb-4">About Mega City Cab Service</h3>
            <p class="text-muted">
                We provide reliable and affordable transportation across Kurunegala and beyond. 
                With modern vehicles and professional drivers, we ensure safe and comfortable 
                journeys for all your travel needs.
            </p>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <div class="container text-center">
        <p class="mb-0">&copy; 2023 Mega City Cab Service. All rights reserved</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>