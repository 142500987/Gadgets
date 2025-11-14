<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="Gadgets.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    /* ====== Base Theme ====== */
    body {
      background-color: #0d0d0d;
      color: #fff;
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
    }

    /* ====== Contact Section ====== */
    .contact-section {
      padding: 80px 0;
      background: linear-gradient(135deg, #0d0d0d 60%, #0a58ca 100%);
      border-top: 3px solid #0a58ca;
    }

    .contact-card {
      background-color: #111;
      border: none;
      border-radius: 15px;
      padding: 40px;
      box-shadow: 0 0 20px rgba(10, 88, 202, 0.3);
      animation: fadeUp 1s ease-in-out;
    }

    .contact-card:hover {
      box-shadow: 0 0 30px rgba(10, 88, 202, 0.6);
      transition: box-shadow 0.3s ease-in-out;
    }

    .contact-card h2 {
      color: #0a58ca;
      font-weight: 700;
      margin-bottom: 25px;
      text-transform: uppercase;
    }

    .form-control {
      background-color: #1a1a1a;
      border: 1px solid #0a58ca;
      color: #fff;
      border-radius: 10px;
    }

    .form-control:focus {
      background-color: #1a1a1a;
      border-color: #3b82f6;
      box-shadow: 0 0 10px #0a58ca;
      color: #fff;
    }

    .btn-primary {
      background-color: #0a58ca;
      border: none;
      border-radius: 30px;
      padding: 10px 30px;
      font-weight: 600;
      transition: 0.3s;
    }

    .btn-primary:hover {
      background-color: #0a58ca;
      box-shadow: 0 0 15px #0a58ca;
      transform: translateY(-3px);
    }

    .contact-info {
      margin-top: 30px;
    }

    .contact-info h5 {
      color: #3b82f6;
      margin-bottom: 10px;
    }

    .contact-info p {
      color: #ccc;
    }

    /* ====== Animation ====== */
    @keyframes fadeUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }


    /* ====== Mobile Adjustments ====== */
    @media (max-width: 768px) {
      .contact-card {
        padding: 25px;
      }
      .contact-section {
        padding: 50px 0;
      }
    }
  </style>
</head>
<body>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- ====== Contact Section ====== -->
  <section class="contact-section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="contact-card text-center">
            <h2>Contact Us</h2>
            <p class="text-light mb-4">
              Have questions or want to collaborate? We’d love to hear from you!  
              Fill out the form below and our team will get back to you soon.
            </p>

            <!-- Contact Form -->
            <form>
              <div class="row g-3">
                <div class="col-md-6">
                  <div class="input-group">
                    <span class="input-group-text bg-transparent border-0 text-primary">
                      <i class="bi bi-person-fill"></i>
                    </span>
                    <input type="text" class="form-control" placeholder="Your Name" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="input-group">
                    <span class="input-group-text bg-transparent border-0 text-primary">
                      <i class="bi bi-envelope-fill"></i>
                    </span>
                    <input type="email" class="form-control" placeholder="Your Email" required>
                  </div>
                </div>
                <div class="col-12">
                  <div class="input-group">
                    <span class="input-group-text bg-transparent border-0 text-primary">
                      <i class="bi bi-chat-left-dots-fill"></i>
                    </span>
                    <input type="text" class="form-control" placeholder="Subject">
                  </div>
                </div>
                <div class="col-12">
                  <textarea class="form-control" rows="5" placeholder="Your Message" required></textarea>
                </div>
                <div class="col-12 mt-3">
                  <button type="submit" class="btn btn-primary">Send Message</button>
                </div>
              </div>
            </form>

            <!-- Contact Info -->
            <div class="contact-info text-start mt-5">
              <h5>📍 Address:</h5>
              <p>123 Tech Avenue, Innovation City, South Africa</p>

              <h5>📞 Phone:</h5>
              <p>+27 68 123 4567</p>

              <h5>✉️ Email:</h5>
              <p>support@gadgetsstore.com</p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>

</asp:Content>
