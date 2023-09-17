<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
             background-image: url('back.jpeg');
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
        }

        .container {
            max-width: 400px;
            margin: 100px auto;
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border-radius: 3px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
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
   <script >
   <% if ("false".equals(session.getAttribute("registration"))) { %>
   alert('registration  failed!.Username Should be unique.');
   <% } %>
   </script>

</head>
<body>
    <div class="container">
        <h2>Registration</h2>
        <form action="registration" method="post" enctype="multipart/form-data">
        
       
            <div class="form-group">
                <input type="text" id="username" name="username" required>
                <label for="username">Username:</label>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
</body>
</html>
