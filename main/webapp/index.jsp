<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('bg.jpg');
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
        }
        .login-container {
            max-width: 500px;
            margin: 0 auto;
            margin-top: 100px;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.2); /* Transparent background */
            animation: fadeInDown 1s;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .login-container .form-group label {
            font-weight: bold;
        }
        .login-container .form-control {
            border-radius: 3px;
        }
        .login-container .btn-primary {
            width: 100%;
            transition: transform 0.3s;
            align :center;
        }
        .login-container .btn-primary:hover {
            transform: scale(1.05);
        }
        @keyframets fadeInDown {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
    <script>
  <% if ("true".equals(session.getAttribute("registration"))) { %>
  alert('registration  Succesfull');
  <% } %>
  <% if ("false".equals(session.getAttribute("login"))) { %>
  alert('Invalid  credential!');
  <% } 
  if("true".equals(session.getAttribute("logout"))){%>
  
  alert('Logout Successful');
  <%}
  session.setAttribute("logout", "false");
  %>
  
  </script>
</head>
<body>

    <div class="container">
        <div class="login-container">
            <h2>Login</h2>
            <form method="post" action="Login">
                <div class="form-group">
                    <label for="username" style="color:white; font-size: 25px;">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" required style="background-color:rgba(255, 255, 255, 0.2); color:white; font-size: 25px;" required>
                </div>
                <div class="form-group">
                    <label for="password " style="color:white; font-size: 25px;">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" style="background-color:rgba(255, 255, 255, 0.2); color:white; font-size: 25px; " required>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
                <div><br>
                <a href="<%= request.getContextPath() %>/register.jsp"  style="color:white; font-size: 25px;" >New User?Register here</a>  
                </div>
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
