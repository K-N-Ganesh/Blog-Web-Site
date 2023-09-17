<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Edit Profile</title>
  <style>
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
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    h1 {
      text-align: center;
    }

    form {
      display: grid;
      gap: 10px;
    }

    label {
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    textarea {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<div class="topnav">
        <a  href="home.jsp">Home</a>
        <a  href="addblog.jsp">Blog</a>
        <a href="feedback.jsp">Feed Back</a>
        <div class="logout-container">
 
        <a class="active" href="profile.jsp"><img src="images/ppic.png" alt="Image Button"></a>
            <a class="logout-button" href="logout.jsp" style="font-size: 20px;">Logout</a>   
        </div>
        </div>
  <div class="container">
    <h1>Edit Profile</h1>
    <form method="post" action="edit">
      <label for="name">First Name:</label>
      <input type="text" id="name" name="fname" placeholder="Your Name">
	  <label for="name">Last Name:</label>
      <input type="text" id="name" name="lname" placeholder="Your Name">

      <label for="username">Username:</label>
      <input type="text" id="username" name="username" placeholder="Your Username">
	  <label for="username">Password:</label>
      <input type="password" id="username" name="password" placeholder="Password">

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" placeholder="Your Email">

      
      <input type="submit" value="Save">
    </form>
  </div>
</body>
</html>
