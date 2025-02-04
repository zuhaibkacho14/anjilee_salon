<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AnjileeSalonWebApp.Contact" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Anjilee Beauty Salon</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
            color: #333;
        }

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

        .contact-info {
            margin-top: 40px;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .form-control {
            border-radius: 10px;
        }

        .btn {
            background: linear-gradient(45deg, #e91e63, #ff4081);
            border: none;
            color: white;
            border-radius: 10px;
        }

        .btn:hover {
            background: linear-gradient(45deg, #ff4081, #e91e63);
            color: white;
        }

        iframe {
            border: none;
            border-radius: 8px;
        }

        footer {
            background: linear-gradient(45deg, #333, #555);
            color: white;
            padding: 40px 10px;
            margin-top: 40px;
        }

        footer a {
            color: #ff4081;
            text-decoration: none;
        }

        footer a:hover {
            color: white;
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

        .social-icons a {
            color: #e91e63;
            font-size: 20px;
            margin: 0 10px;
            transition: color 0.3s;
        }

        .social-icons a:hover {
            color: #ffcccb;
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

<div class="container my-5">
    <h2 class="text-center">Contact Us</h2>
    <div class="row">
        <div class="col-md-6 contact-info">
            <form runat="server" id="contactForm">
                <div class="mb-3">
                    <label for="name" class="form-label">Your Name</label>
                    <asp:TextBox runat="server" type="text" class="form-control" id="txtname" required/>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Your Email</label>
                    <asp:TextBox runat="server" type="email" class="form-control" id="txtemail" required/>
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Message</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" class="form-control" id="txtmessage" rows="5" required></asp:TextBox>
                </div>
                <div class="mb-3">
                   <asp:Label ID="lblInquiryType" runat="server" Text="Inquiry Type" CssClass="form-label" AssociatedControlID="ddlInquiryType"></asp:Label>
                   <asp:DropDownList ID="ddlInquiryType" runat="server" CssClass="form-select">
                         <asp:ListItem Value="general">General</asp:ListItem>
                         <asp:ListItem Value="booking">Booking</asp:ListItem>
                         <asp:ListItem Value="feedback">Feedback</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn w-100"/>
            </form>
        </div>
        <div class="col-md-6 contact-info">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2689.056602160719!2d-122.08424985098765!3d37.42199917947418!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fbbeb1b6f469d%3A0xb104f3f8b8e4a220!2sGoogleplex!5e0!3m2!1sen!2sus!4v1634551369423!5m2!1sen!2sus" width="100%" height="300"></iframe>
        </div>
    </div>
</div>

<div class="container text-center my-5">
    <h3>Contact Information</h3>
    <div class="row">
        <div class="col-md-4">
            <h5>Phone</h5>
            <p><a href="tel:+1234567890" class="btn btn-link">+1 234 567 890</a></p>
        </div>
        <div class="col-md-4">
            <h5>Email</h5>
            <p><a href="mailto:info@anjubeauty_salon.com" class="btn btn-link">info@anjubeauty_salon.com</a></p>
        </div>
        <div class="col-md-4">
            <h5>Location</h5>
            <p>Anjilee beauty Salon, Karachi Pakistan</p>
        </div>
    </div>
</div>

<div class="container text-center">
    <h5>Follow Us</h5>
    <div class="social-icons">
        <a href="Contact.aspx" target="_blank"><i class="fab fa-instagram"></i></a>
        <a href="Contact.aspx" target="_blank"><i class="fab fa-facebook"></i></a>
        <a href="Contact.aspx" target="_blank"><i class="fab fa-twitter"></i></a>
    </div>
</div>

<footer>
    <div class="container text-center">
        <p>&copy; 2025 anjilee beauty salon. All rights reserved.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>