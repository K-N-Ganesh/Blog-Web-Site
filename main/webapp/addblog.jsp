<%@page import="com.BlogSite.Blog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Blog</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <style>
        body {
            
        }
        .container {
            max-width: 600px;
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
</head>
<body>
 <div class="topnav">
        <a  href="home.jsp">Home</a>
        <a class="active" href="addblog.jsp">Blog</a>
        <a href="feedback.jsp">Feed Back</a>
        
        <div class="logout-container">
 
        <a href="profile.jsp"><img src="ppic.png" alt="Image Button"></a>
            <a class="logout-button" href="logout.jsp" style="font-size: 20px;">Logout</a>   
        </div>
        </div>
    <div class="container">
        <h2>Add Blog</h2>
        <form method="post" action="addblog" enctype="multipart/form-data">
        <%
        String username=Blog.userId;
		request.setAttribute("username1", username);
		
		%>
		<div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="title">Image:</label>
                <input type="file"  id="image1" name="imgSrc"  >
            </div>
            <div class="form-group">
                <label for="content">Content:</label>
                <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>