<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Mega City Cab Service</title>
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
            background: linear-gradient(rgba(42, 78, 110, 0.9), rgba(42, 78, 110, 0.9)),
                        url('https://images.unsplash.com/photo-1502872364588-894d7d6ddfab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');
            background-size: cover;
            background-position: center;
            min-height: 100vh;
        }

        .navbar {
            background: rgba(255, 255, 255, 0.95);
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        }

        .login-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin-top: 100px;
        }

        .profile-img {
            width: 120px;
            height: 120px;
            border: 3px solid var(--secondary-color);
            margin: -60px auto 20px;
        }

        .btn-primary {
            background-color: var(--primary-color);
            border: none;
            padding: 12px 30px;
            font-weight: 600;
        }

        .btn-primary:hover {
            background-color: #1d3a52;
        }

        .form-control:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 0.25rem rgba(58, 183, 149, 0.25);
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
    </div>
</nav>

<!-- Login Section -->
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="login-card p-4">
                <div class="text-center">
                    <h3>User Login</h3>
                
                </div>
                
                <form method="post" action="log">
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <div class="input-group">
                            <span class="input-group-text">
                                <i class="fas fa-user text-secondary"></i>
                            </span>
                            <input type="text" class="form-control" name="username" placeholder="Enter username" required>
                        </div>
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label">Password</label>
                        <div class="input-group">
                            <span class="input-group-text">
                                <i class="fas fa-lock text-secondary"></i>
                            </span>
                            <input type="password" class="form-control" name="password" placeholder="Enter password" required>
                        </div>
                    </div>

                    <div class="d-grid mb-3">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-sign-in-alt me-2"></i>Login
                        </button>
                    </div>
                </form>

                <div class="text-center mt-4">
                    <p class="text-muted">Don't have an account? 
                        <a href="reg.jsp" class="text-decoration-none" style="color: var(--primary-color);">
                            Create Account
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>