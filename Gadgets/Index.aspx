<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Gadgets.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
  body {
    background-color: #000000;
    color: #f5f5f5;
    font-family: 'Poppins', sans-serif;
    overflow-x: hidden;
  }

  /* Carousel */
  .carousel-inner video,
  .carousel-inner img {
    height: 700px;
    object-fit: cover;
    border-radius: 10px;
  }

  .carousel-item {
    transition: transform 1s ease-in-out, opacity 1s ease-in-out;
  }

  /* Section Title */
  .section-title {
    text-align: center;
    font-weight: 600;
    font-size: 2rem;
    color: #fff;
    margin-bottom: 2rem;
    position: relative;
  }

  .section-title::after {
    content: "";
    display: block;
    width: 70px;
    height: 3px;
    background: #111;
    margin: 10px auto 0;
    border-radius: 2px;
  }

  /* Product Cards */
  .product-card {
    border: none;
    background: #111;
    border-radius: 15px;
    transition: all 0.4s ease;
    overflow: hidden;
    text-align: center;
  }

  .product-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
  }

  .product-img {
    height: 220px;
    object-fit: cover;
    border-radius: 15px 15px 0 0;
    transition: transform 0.4s ease;
  }

  .product-card:hover .product-img {
    transform: scale(1.05);
  }

  .card-body {
    padding: 1rem;
  }

  .fw-bold {
    color: #00FFFF;
    margin-bottom: 0.4rem;
  }

  .text-muted {
    color: #bbb !important;
  }

  /* Buy Button */
  .btn-buy {
    background: linear-gradient(#00000);
    border: none;
    border-radius: 25px;
    font-weight: 500;
    padding: 0.4rem 1.2rem;
    transition: all 0.3s ease;
  }

  .btn-buy:hover {
    background: #00FFFF;
    box-shadow: 0 0 12px rgba(10, 88, 202, 0.6);
    transform: scale(1.05);
  }

  /* Responsive spacing */
  @media (max-width: 768px) {
    .product-img {
      height: 180px;
    }
  }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <video class="d-block w-100" autoplay muted loop>
        <source src="Images/Slideshow/iPhone 15 Pro Reveal (4K).publer.com.mp4" type="video/mp4">
        Your browser does not support the video tag.
      </video>
    </div>
    <div class="carousel-item">
      <img src="Images/Slideshow/Slide 2..png"  class="d-block w-100" alt="Slide 2" />
    </div>
    <div class="carousel-item">
      <img src="Images/Slideshow/Slide 3.png" class="d-block w-100" alt="Slide 3" />
    </div>
  </div>

  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </a>
</div>

<!-- Featured Products Section -->
<section id="products" class="py-5">
  <div class="container">
    <h2 class="section-title">✨ Featured Products</h2>
    <div class="row g-4">

      <!-- Product 1 -->
      <div class="col-md-3 col-sm-6">
        <div class="card product-card">
          <img src="Images/Gadgets Store/Phones/iPhone 16.png" class="product-img" alt="iPhone 16">
          <div class="card-body">
            <h6 class="fw-bold">iPhone 16</h6>
            <p class="text-muted">R14,500</p>
            <button class="btn btn-buy text-white btn-sm">Buy Now</button>
          </div>
        </div>
      </div>

      <!-- Product 2 -->
      <div class="col-md-3 col-sm-6">
        <div class="card product-card">
          <img src="Images/Gadgets Store/FlashDrives/G-DRIVE.jpg" class="product-img" alt="G-Drive">
          <div class="card-body">
            <h6 class="fw-bold">G-Drive</h6>
            <p class="text-muted">R4,500</p>
            <button class="btn btn-buy text-white btn-sm">Buy Now</button>
          </div>
        </div>
      </div>

      <!-- Product 3 -->
      <div class="col-md-3 col-sm-6">
        <div class="card product-card">
          <img src="Images/Gadgets Store/Headphones/Anker.jpg" class="product-img" alt="Anker Headphones">
          <div class="card-body">
            <h6 class="fw-bold">Anker Headphones</h6>
            <p class="text-muted">R1,299</p>
            <button class="btn btn-buy text-white btn-sm">Buy Now</button>
          </div>
        </div>
      </div>

      <!-- Product 4 -->
      <div class="col-md-3 col-sm-6">
        <div class="card product-card">
          <img src="Images/Gadgets Store/Laptop/Hp Laptop 15.jpg" class="product-img" alt="HP Laptop">
          <div class="card-body">
            <h6 class="fw-bold">HP Laptop 15</h6>
            <p class="text-muted">R48,000</p>
            <button class="btn btn-buy text-white btn-sm">Buy Now</button>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>

</asp:Content>
