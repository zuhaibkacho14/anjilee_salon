<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="AnjileeSalonWebApp.AboutUs" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Anjilee Beauty Salon</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        header {
            background: linear-gradient(45deg, #e91e63, #ff4081);
            color: white;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        header .nav-link {
            color: white !important;
            transition: color 0.3s;
        }

        header .nav-link:hover {
            color: #ffcccb !important;
        }
        .social-media a {
            color: white;
            font-size: 20px;
            margin: 0 10px;
            transition: color 0.3s;
        }
        .social-media a:hover {
            color: #ffcccb;
        }
        .hero-section {
            background: url('Content/images/kkk.jpg') no-repeat center center/cover;
            height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);

        }

        .team-card img {
            border-radius: 50%;
        }
        .team-card:hover {
            transform: scale(1.05);
            transition: 0.3s;
        }
        .gallery img {
            width: 100%;
            border-radius: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    
 
<header class="sticky-top bg-light shadow-sm">
    <div class="container d-flex justify-content-between align-items-center py-3">
        <div class="logo">
            <img src="Content/images/logos.png" alt="Salon Logo" height="50">
        </div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="Home.aspx">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="Services.aspx">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact Us</a></li>
            </ul>
        </nav>
        <div class="social-media">
            <a href="#" class="ms-3"><i class="fab fa-facebook"></i></a>
            <a href="#" class="ms-3"><i class="fab fa-instagram"></i></a>
            <a href="#" class="ms-3"><i class="fab fa-youtube"></i></a>
            <a href="#" class="ms-3"><i class="fab fa-twitter"></i></a>
        </div>
    </div>
</header>


    <section class="hero-section text-center">
        <div>
            <h1>Welcome to Our Salon</h1>
            <p class="lead">"Where Beauty Meets Excellence"</p>
        </div>
    </section>


    <section class="container my-5">
        <div class="text-center">
            <h2>About Our Salon</h2>
            <p class="text-muted">Providing top-notch beauty services since 2010.</p>
        </div>
        <div class="container py-5">
    <div class="row text-center">
        <div class="col-md-6 mb-4 mb-md-0">
            <div class="story-box bg-light p-4 rounded shadow">
                <h3 class="text-primary">Our Story</h3>
                <p>Our story began with a passion for beauty and a commitment to offering exceptional salon services.
                   </p>
            </div>
        </div>
        <div class="col-md-6 mb-4 mb-md-0">
            <div class="mission-box text-white p-4 rounded shadow" style="background: linear-gradient(45deg, #e91e63, #ff4081);">
                <h3>Our Mission</h3>
                <p>To bring out the best version of you with our exceptional beauty and wellness services.</p>
            </div>
        </div>
    </div>
</div>
    </section>


    <section class="bg-light py-5">
        <div class="container">
            <div class="text-center">
                <h2>Meet Our Team</h2>
                <p class="text-muted">Our team of professional stylists and beauty experts.</p>
            </div>
            <div class="row text-center mt-4">
                <div class="col-md-4">
                    <div class="team-card">
                        <img src="Content/images/haircuts.jpg" alt="Stylist" class="img-fluid w-50 mb-3">
                        <h5>Elham</h5>
                        <p>Hair Stylist</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card">
                        <img src="Content/images/makeup.jpg" alt="Makeup Artist" class="img-fluid w-50 mb-3">
                        <h5>Anjilee</h5>
                        <p>Makeup Artist</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-card">
                        <img src="Content/images/haircuts.jpg" alt="Nail Artist" class="img-fluid w-50 mb-3">
                        <h5>Neha</h5>
                        <p>Nail Artist</p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="container my-5">
        <div class="text-center">
            <h2>Our Gallery</h2>
            <p class="text-muted">A glimpse into our salon and services.</p>
        </div>
        <div class="row gallery">
            <div class="col-md-4"><img src="Content/images/massage.jpg" alt="Gallery Image"></div>
            <div class="col-md-4"><img src="Content/images/nail.jpg" alt="Gallery Image"></div>
            <div class="col-md-4"><img src="Content/images/facial.jpg" alt="Gallery Image"></div>
        </div>
    </section>


    <section class="bg-light py-5">
        <div class="container">
            <div class="text-center">
                <h2>What Our Customers Say</h2>
            </div>
            <div class="row mt-4">
                <div class="col-md-4">
                    <blockquote>
                        <p>"Amazing service and super friendly staff!"</p>
                        <footer>- Kacho.</footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote>
                        <p>"Loved the ambiance and the results. Highly recommend."</p>
                        <footer>- Sabir.</footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote>
                        <p>"Best salon experience I’ve ever had."</p>
                        <footer>- Shigri.</footer>
                    </blockquote>
                </div>
            </div>
        </div>
    </section>


    <footer class="bg-dark text-white text-center py-4">
        <p>&copy; 2025 anjilee beauty salon. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>