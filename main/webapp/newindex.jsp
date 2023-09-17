<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration form</title>
    <link rel="stylesheet" href="style.css">
    <script>
  </script>
</head>
<body>
    <header class="title">
        <h1>Blog Builder</h1>
    </header>
    <div class="container">
        <div class="card">
            <div class="inner-box" id="card">
                <div class="card-front">
                    <h2 class="sub-title"> 	</h2>
                    <form  method="post" action="Login1">
                        <label for="email" class="plab">Enter User Name</label>
                        <input type="text" class="input-box" name="username" required>
                        <br><br>
                        <label for="password" class="plab">Enter  Password</label>
                        <input type="password" class="input-box" name="password" placeholder="enter your password" required>
                    

                        <button type="submit" class="sub-btn">Login</button><br>
                        
                    </form>
                    <button type="button" class="btn" onclick="openRegister()">Register</button>
                </div>
                <div class="card-back">
                    <h2 class="sub-title">Register</h2>
                    <form action="registration" method="post">
                        <!-- <label for="email" class="plab">Enter First Name:</label> -->

                        <input type="text" class="input-box" name="fname" placeholder="First Name" required>
                        <!-- <label for="email" class="plab">Enter Last Name:</label> -->
                        <input type="text" class="input-box" name="lname" placeholder="Last name" required>
                        <!-- <label for="email" class="plab">Enter  The Email:</label> -->
                        <input type="email" class="input-box" name="email" placeholder="Your Email Id" required>
                        <!-- <label for="email" class="plab">Enter The Password:</label> -->
<input type="text" class="input-box" name ="username" placeholder="Username" required>	
                        <input type="password" class="input-box" name="password" placeholder="Password" required>
                        <!-- <label for="email" class="plab">Enter The Confirm Password:</label> -->

                        

                        <button type="submit" class="sub-btn">submit</button>
                    </form>
                    <button type="button" class="btn" onclick="openLogin()">Login</button>
                </div>
            </div>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>