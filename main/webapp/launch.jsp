<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lunch Blog</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles.css">
   <style>
        /* CSS styles for the top navigation bar */
        .topnav {
            background-color: #333;
            overflow: hidden;
        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 20px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #4CAF50;
            color: white;
        }

        /* CSS styles for the logout button */
        .logout-container {
            float: right;
            padding: 10px 10px;
        }
        .logout-container a img {
    width: 24px;
    height: 24px;
}
    </style>
</head>
<body>
   <div class="topnav">
        <a class="active" href="#home">Home</a>
        <a href="#blog">Blog</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
        <div class="logout-container">
        <a href="#"><img src="back.jpeg" alt="Image Button"></a>
            <a class="logout-button" href="logout.jsp" style="font-size: 20px;">Logout</a>
            
        </div>
        </div>

  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <h1 class="display-4">Welcome to our Lunch Blog!</h1>
      <p class="lead">Discover delicious lunch recipes and get inspired to prepare amazing meals.</p>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="card mb-4">
          <img src="lunch1.jpg" class="card-img-top" alt="Lunch Image 1">
          <div class="card-body">
            <h5 class="card-title">Delicious Salad</h5>
            <p class="card-text">Learn how to make a healthy and flavorful salad for your lunch.</p>
            <a href="newindex.jsp" class="btn btn-primary">Read More</a>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card mb-4">
          <img src="lunch2.jpg" class="card-img-top" alt="Lunch Image 2">
          <div class="card-body">
            <h5 class="card-title">Tasty Sandwich</h5>
            <p class="card-text">Discover the best sandwich recipes to enjoy a satisfying lunch.</p>
            <a href="newindex.jsp" class="btn btn-primary">Read More</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer class="footer mt-auto py-3 bg-light">
    <div class="container text-center">
      <span class="text-muted">© 2023 Lunch Blog. All rights reserved.</span>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper"></script>
  </body>
  </html>