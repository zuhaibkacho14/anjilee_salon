<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AnjileeSalonWebApp.Home" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anjilee Beauty Salon</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

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
        .hero {
            background-image: url("Content/images/kkk.jpg");
            background-size: cover;
            background-position: center;
            height: 80vh;
            color: whitesmoke;
        }

        .hero-content {
            z-index: 10;
            position: relative;
            text-align: center;
            padding-top: 15%;
        }

        .hero h1 {
            font-size: 3em;
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
        }

        .hero p {
            font-size: 1.5em;
        }

        .service-item {
            transition: transform 0.3s ease;
        }

        .service-item:hover {
            transform: translateY(-10px);
        }
        .contact-us-section h2 {
        font-weight: bold;
        color: #2c3e50;
    }
    .contact-us-section ul {
        padding: 0;
        list-style: none;
    }
    .contact-us-section ul li {
        margin-bottom: 10px;
    }
    .contact-us-section a {
        text-decoration: none;
        transition: color 0.3s ease;
    }
    .contact-us-section a:hover {
        color: #3498db;
    }
    .contact-us-section .form-control {
        border: 1px solid #ccc;
        padding: 10px 15px;
        box-shadow: none;
    }
    .contact-us-section .btn-primary {
        background-color: #3498db;
        border: none;
        transition: background-color 0.3s ease;
    }
    .contact-us-section .btn-primary:hover {
        background-color: #2980b9;
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

    <section class="hero text-center">
        <div class="hero-content">
            <h1>Relax, Refresh, Rejuvenate</h1>
            <p>Your perfect look starts here.</p>
            <a href="Contact.aspx" class="btn btn-danger btn-lg">Book an Appointment</a>
            <a href="Services.aspx" class="btn btn-light btn-lg ms-3">Browse Our Services</a>
        </div>
    </section>
<section class="about-us py-5">
    <div class="container">
        <div class="text-center mb-4">
            <h2>About Us</h2>
            <p class="text-muted">Discover who we are and what makes us special.</p>
        </div>
        <div class="row align-items-center">
            <div class="col-md-6">
                <img src="Content/images/logo.jpg" alt="About Us" class="img-fluid rounded shadow">
            </div>
            <div class="col-md-6">
                <h3 class="mb-3">Your Go-To Beauty Destination</h3>
                <p>
                    At Anjilee Beauty Salon, we are committed to providing exceptional beauty and wellness services tailored to your unique needs. 
                    With a team of experienced stylists and a welcoming atmosphere, we ensure every visit leaves you feeling refreshed and confident.
                </p>
                <p>
                    Since our founding in 2024, we’ve been dedicated to enhancing the natural beauty of our clients with personalized care and innovative treatments.
                </p>
                <a href="AboutUs.aspx" class="btn btn-primary mt-3">Learn More</a>
            </div>
        </div>
    </div>
</section>
    <section class="services py-5 bg-light">
        <div class="container text-center">
            <h2 class="mb-4">Our Services</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="service-item p-4 bg-white shadow rounded">
                        <img src="Content/images/haircuts.jpg" runat="server" alt="Haircut" class="img-fluid rounded mb-3">
                        <h3>Haircuts</h3>
                        <p>Transform your look with a stylish haircut.</p>
                        <a href="Services.aspx#haircut" class="btn btn-danger">Learn More</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-item p-4 bg-white shadow rounded">
                        <img src="Content/images/facial.jpg" runat="server" alt="Facial" class="img-fluid rounded mb-3">
                        <h3>Facials</h3>
                        <p>Relax and rejuvenate with our soothing facials.</p>
                        <a href="Services.aspx#facial" class="btn btn-danger">Learn More</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="service-item p-4 bg-white shadow rounded">
                        <img src="Content/images/manicure.jpg" runat="server" alt="Manicure" class="img-fluid rounded mb-3">
                        <h3>Manicures</h3>
                        <p>Get beautiful nails with our manicure services.</p>
                        <a href="Services.aspx#manicure" class="btn btn-danger">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

<section class="testimonials py-5">
    <div class="container text-center">
        <h2 class="mb-4">What Our Clients Say</h2>
        <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <p class="mb-3">"I loved my experience at this salon! The staff is friendly, and the service is amazing!"</p>
                    <h4>Fiza Aurther</h4>
                    <div class="stars mb-3">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                </div>
                <div class="carousel-item">
                    <p class="mb-3">"A relaxing atmosphere and top-notch service. I highly recommend this place!"</p>
                    <h4>Kacho</h4>
                    <div class="stars mb-3">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
</section>

<section class="contact-us-section py-5 bg-light">
    <div class="container">
        <div class="row align-items-center">
   
            <div class="col-md-6 mb-4 mb-md-0">
                <h2>Contact Us</h2>
                <p class="text-muted">Have questions? We're here to help. Drop us a quick message, or visit our <a href="contact.aspx" class="text-primary">Contact Page</a> for more options.</p>
                <ul class="list-unstyled mt-3">
                    <li><strong>Phone:</strong> <a href="tel:+123456789" class="text-dark">+1 234 567 89</a></li>
                    <li><strong>Email:</strong> <a href="mailto:info@anjilee_salon.com" class="text-dark">info@anjubeauty_salon.com</a></li>
                    <li><strong>Location:</strong> Anjilee Beauty Salon, Karachi</li>
                </ul>
            </div>

   
            <div class="col-md-6">
                <form runat="server">
                    <div class="mb-3">
                        <asp:textbox ID="txtname" runat="server" type="text" class="form-control rounded-pill" placeholder="Your Name" required/>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox ID="txtemail" runat="server" type="email" class="form-control rounded-pill" placeholder="Your Email" required/>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" class="form-control rounded-3" rows="3" placeholder="Your Message" required/>
                    </div>
                    <asp:button ID="btnhomeContact" runat="server" Text="Send a Message" type="submit" OnClick="AddClickSubmit" class="btn btn-primary rounded-pill w-100"/>
                </form>
            </div>
        </div>
    </div>
</section>


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

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
