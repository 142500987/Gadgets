<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Gadgets.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
    body {
      background-color: #0a58ca;
      color: #fff;
      font-family: 'Poppins', sans-serif;
    }

    /* Header */
    .blog-header {
      background: linear-gradient(#0d0d0d);
      padding: 80px 0;
      text-align: center;
      color: white;
    }

    .blog-header h1 {
      font-size: 3rem;
      font-weight: 700;
    }

    .blog-header p {
      color: #d0d0d0;
      font-size: 1.2rem;
    }

    /* Blog Cards */
    .blog-card {
      background-color: #111;
      border: 1px solid #0a58ca;
      border-radius: 15px;
      overflow: hidden;
      transition: 0.4s ease;
      box-shadow: 0 0 20px rgba(10, 88, 202, 0.2);
    }

    .blog-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 0 30px rgba(10, 88, 202, 0.4);
    }

    .blog-card img {
      height: 220px;
      width: 100%;
      object-fit: cover;
    }

    .blog-card .card-body {
      padding: 25px;
    }

    .blog-card .card-title {
      color: #0a58ca;
      font-weight: 600;
      margin-bottom: 10px;
    }

    .blog-card .card-text {
      color: #aaa;
      font-size: 0.95rem;
    }

    .read-more {
      color: #0a58ca;
      font-weight: 500;
      text-decoration: none;
      transition: 0.3s;
    }

    .read-more:hover {
      color: #3b82f6;
    }

    /* Social Section */
    .social-section {
      background-color: #0a0a0a;
      border-top: 2px solid #0a58ca;
      padding: 60px 0;
      text-align: center;
    }

    .social-section h3 {
      color: #0a58ca;
      font-weight: 700;
      margin-bottom: 20px;
    }

    .social-icons a {
      color: #0a58ca;
      margin: 0 15px;
      font-size: 2rem;
      transition: 0.3s;
    }

    .social-icons a:hover {
      color: #3b82f6;
      transform: scale(1.1);
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Header -->
  <section class="blog-header">
    <div class="container">
      <h1>Tech Insights & News</h1>
      <p>Stay updated with the latest trends and reviews from the world of gadgets.</p>
    </div>
  </section>

  <!-- Blog Section -->
  <section class="py-5">
    <div class="container">
      <div class="row g-4">

        <!-- Blog Post 1 -->
        <div class="col-md-4">
          <div class="card blog-card">
            <img src="https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=900&q=80" alt="Smartphone" />
            <div class="card-body">
              <h5 class="card-title">Top 5 Smartphones of 2025</h5>
              <p class="card-text">Explore the best phones redefining mobile innovation this year.</p>
              <a href="#" class="read-more">Read More →</a>
            </div>
          </div>
        </div>

        <!-- Blog Post 2 -->
        <div class="col-md-4">
          <div class="card blog-card">
            <img src="Images/Gadgets%20Store/Headphones/Alienware-7.1.png"  alt="Headphones" />
            <div class="card-body">
              <h5 class="card-title">Next-Gen Headphones</h5>
              <p class="card-text">Noise-cancelling, AI-powered, and immersive audio experiences await.</p>
              <a href="#" class="read-more">Read More →</a>
            </div>
          </div>
        </div>

        <!-- Blog Post 3 -->
        <div class="col-md-4">
          <div class="card blog-card">
            <img src="Images/Gadgets%20Store/Watches/Google%20Pixel%20Watch%202.jpg" alt="Smartwatch" />
            <div class="card-body">
              <h5 class="card-title">Smartwatch Trends in 2025</h5>
              <p class="card-text">Discover how smartwatches are transforming fitness and health tracking.</p>
              <a href="#" class="read-more">Read More →</a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- Social Media Section -->
  <section class="social-section">
    <div class="container">
      <h3>Follow Us on Social Media</h3>
      <div class="social-icons">
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-x-twitter"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
      </div>
      <p class="text-muted mt-3">Stay connected for the latest gadget updates, reviews, and tech deals!</p>
    </div>
  </section>
</asp:Content>
