<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="AnjileeSalonWebApp.Services" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services | Anjilee Beauty Salon</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    
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
        .service-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 5px;
        }

        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .service-img {
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }

        .service-description {
            display: none;
            padding: 5px;
        }

        .service-card:hover .service-description {
            display: block;
        }

        .filter-section {
            margin: 30px 0;
        }

        .filter-btn {
            margin: 5px;
        }
        footer {
            background-color: #333;
            color: white;
            padding: 40px 10px;
            margin-top: 10px;
        }

        footer a {
            text-decoration: none;
            color: #e91e63;
        }

        footer a:hover {
            color: white;
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

    <div class="container filter-section">
        <div class="row">
            <div class="col-md-6">
                <input type="text" class="form-control" id="searchInput" placeholder="Search for services...">
            </div>
            <div class="col-md-6 text-md-end">
                <button class="btn btn-outline-primary filter-btn" id="hairFilter">Hair</button>
                <button class="btn btn-outline-primary filter-btn" id="skinFilter">Skin</button>
                <button class="btn btn-outline-primary filter-btn" id="nailsFilter">Nails</button>
                <button class="btn btn-outline-primary filter-btn" id="massageFilter">Massage</button>
            </div>
        </div>
    </div>


    <div class="container">
        <h2 class="text-center my-5">Our Services</h2>

        <div class="row row-cols-1 row-cols-md-3 g-4">
          
            <div class="col service-category hair">
                <div class="card service-card">
                     <img src="Content/images/cutting.jpg" class="card-img-top service-img" alt="Haircut">
                    
                    <div class="card-body">
                        <h5 class="card-title">Haircut</h5>
                        <p class="card-text">Get a fresh, trendy haircut by our expert stylists.</p>
                        <p class="price">$10 - $20</p>
                        <a href="Contact.aspx" class="btn btn-primary">Book Now</a>
                    </div>
                    <div class="service-description">
                        <p>Our stylists will help you find the best haircut to suit your personality and style.</p>
                    </div>
                </div>
            </div>


            <div class="col service-category skin">
                <div class="card service-card">
                     <img src="Content/images/facial treat.jpg" class="card-img-top service-img" alt="Facial">
                   
                    <div class="card-body">
                        <h5 class="card-title">Facial Treatment</h5>
                        <p class="card-text">Pamper your skin with our rejuvenating facial treatments.</p>
                        <p class="price">$30 - $50</p>
                        <a href="Contact.aspx" class="btn btn-primary">Book Now</a>
                    </div>
                    <div class="service-description">
                        <p>Our facials include various treatments to hydrate, exfoliate, and brighten your skin.</p>
                    </div>
                </div>
            </div>


            <div class="col service-category nails">
                <div class="card service-card">
                     <img src="Content/images/manicure.jpg" class="card-img-top service-img" alt="Manicure">
                    
                    <div class="card-body">
                        <h5 class="card-title">Manicure</h5>
                        <p class="card-text">Get your nails done by our professional nail artists.</p>
                        <p class="price">$25</p>
                        <a href="Contact.aspx" class="btn btn-primary">Book Now</a>
                    </div>
                    <div class="service-description">
                        <p>Choose from a variety of nail styles and colors for a personalized look.</p>
                    </div>
                </div>
            </div>

            <div class="col service-category massage">
                <div class="card service-card">
                     <img src="Content/images/massage.jpg" class="card-img-top service-img" alt="Massage">
                    
                    <div class="card-body">
                        <h5 class="card-title">Massage</h5>
                        <p class="card-text">Relax and unwind with a full-body massage.</p>
                        <p class="price">$50 - $100</p>
                        <a href="Contact.aspx" class="btn btn-primary">Book Now</a>
                    </div>
                    <div class="service-description">
                        <p>We offer deep tissue, Swedish, and aromatherapy massages to relax your muscles.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

<footer class="bg-dark text-white">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>Anjilee Beauty Salon</h3>
                <p>Address: Anjilee Beauty Salon, Karachi Pakistan</p>
                <p>Email: contact@anjubeauty_salon.com</p>
                <p>Phone: (123) 456-7890</p>
            </div>
            <div class="col-md-6 text-end">
                <h3>Follow Us</h3>
                <a href="#" class="me-3"><i class="fab fa-facebook"></i></a>
                <a href="#" class="me-3"><i class="fab fa-instagram"></i></a>
                <a href="#" class="ms-3"><i class="fab fa-youtube"></i></a>
                <a href="#" class="ms-3"><i class="fab fa-twitter"></i></a>
            </div>
        </div>
    </div>
</footer>

    <!-- Bootstrap and jQuery Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Search functionality
        document.getElementById("searchInput").addEventListener("input", function() {
            let query = this.value.toLowerCase();
            let services = document.querySelectorAll(".service-category");

            services.forEach(function(service) {
                let title = service.querySelector(".card-title").innerText.toLowerCase();
                if (title.includes(query)) {
                    service.style.display = "block";
                } else {
                    service.style.display = "none";
                }
            });
        });
    </script>
</body>
</html>