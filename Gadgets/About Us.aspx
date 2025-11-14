<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="Gadgets.About_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    body {
      background-color: #0a58ca;
      color: #fff;
      font-family: 'Poppins', sans-serif;
      line-height: 1.7;
    }

    /* Header */
    .about-header {
      background: linear-gradient(#111);
      color: white;
      padding: 100px 0 80px;
      text-align: center;
    }

    .about-header h1 {
      font-size: 3rem;
      font-weight: 700;
    }

    .about-header p {
      font-size: 1.1rem;
      color: #d0d0d0;
    }

    /* About Section */
    .about-content {
      padding: 80px 0;
    }

    .about-text h2 {
      color: #d0d0d0;
      font-weight: 700;
      margin-bottom: 20px;
    }

    .about-text p {
      color: #ccc;
      font-size: 1rem;
    }

    .about-image img {
      border-radius: 15px;
      box-shadow: 0 0 25px rgba(10, 88, 202, 0.4);
      transition: transform 0.3s ease;
    }

    .about-image img:hover {
      transform: scale(1.02);
    }

    /* Mission Section */
    .mission {
      background-color: #111;
      padding: 70px 0;
      text-align: center;
      border-top: 2px solid #0a58ca;
      border-bottom: 2px solid #0a58ca;
    }

    .mission h3 {
      color: #d0d0d0;
      font-weight: 700;
      margin-bottom: 15px;
    }

    .mission p {
      color: #ccc;
      max-width: 700px;
      margin: 0 auto;
    }

    /* Team Section */
    .team-section {
      padding: 80px 0;
      text-align: center;
    }

    .team-section h2 {
      color: #d0d0d0;
      font-weight: 700;
      margin-bottom: 50px;
    }

    .team-member {
      background-color: #111;
      border-radius: 15px;
      padding: 25px;
      transition: 0.3s;
      box-shadow: 0 0 15px rgba(10, 88, 202, 0.2);
    }

    .team-member:hover {
      transform: translateY(-5px);
      box-shadow: 0 0 30px rgba(10, 88, 202, 0.4);
    }

    .team-member img {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      margin-bottom: 15px;
      border: 3px solid #0a58ca;
    }

    .team-member h5 {
      color: #3b82f6;
      margin-bottom: 5px;
    }

    .team-member p {
      color: #aaa;
      font-size: 0.9rem;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Header -->
  <section class="about-header">
    <div class="container">
      <h1>About Us</h1>
      <p>Innovation. Style. Technology. We bring the best gadgets to your hands.</p>
    </div>
  </section>

  <!-- About Section -->
  <section class="about-content">
    <div class="container">
      <div class="row align-items-center g-5">
        <div class="col-lg-6 about-text">
          <h2>Who We Are</h2>
          <p>
            At <strong>Gadgets Store</strong>, we’re passionate about technology that makes life easier, smarter, and more exciting.  
            From cutting-edge smartphones to the latest wearables and accessories, we curate products that bring innovation and design together.
          </p>
          <p>
            Founded in 2020, our mission has been simple — to connect people with gadgets that inspire creativity and productivity.  
            Whether you’re a gamer, creator, or tech enthusiast, we’ve got something just for you.
          </p>
        </div>
        <div class="col-lg-6 about-image">
          <img src="https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=1200&q=80" alt="Gadgets Team" class="img-fluid">
        </div>
      </div>
    </div>
  </section>

  <!-- Mission Section -->
  <section class="mission">
    <div class="container">
      <h3>Our Mission</h3>
      <p>
        To empower people through technology by delivering high-quality gadgets that blend performance, innovation, and style.  
        We believe in the power of tech to transform everyday life — and we’re here to make it accessible to everyone.
      </p>
    </div>
  </section>

  <!-- Team Section -->
  <section class="team-section">
    <div class="container">
      <h2>Meet Our Team</h2>
      <div class="row g-4 justify-content-center">
        <div class="col-md-4 col-lg-3">
          <div class="team-member">
            <img src="https://randomuser.me/api/portraits/men/45.jpg" alt="Founder">
            <h5>Sandile M.</h5>
            <p>Founder & Lead Developer</p>
          </div>
        </div>
        <div class="col-md-4 col-lg-3">
          <div class="team-member">
            <img src="https://randomuser.me/api/portraits/women/65.jpg" alt="Designer">
            <h5>Jessica L.</h5>
            <p>Creative Designer</p>
          </div>
        </div>
        <div class="col-md-4 col-lg-3">
          <div class="team-member">
            <img src="https://randomuser.me/api/portraits/men/12.jpg" alt="Marketing">
            <h5>Michael K.</h5>
            <p>Marketing Specialist</p>
          </div>
        </div>
      </div>
    </div>

  </section>
</asp:Content>
