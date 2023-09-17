<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Form</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
}

h1 {
    color: #333;
    margin-bottom: 20px;
}

.form-container {
    max-width: 500px;
    margin: 0 auto;
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
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

textarea {
    height: 100px;
}

input[type="submit"] {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.success-message {
    color: #4CAF50;
    margin-top: 10px;
}

.error-message {
    color: #FF0000;
    margin-top: 10px;
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
        <a  href="addblog.jsp">Blog</a>
        <a class="active" href="feedback.jsp">Feed Back</a>
        
        <div class="logout-container">
 
        <a href="profile.jsp"><img src="ppic.png" alt="Image Button"></a>
            <a class="logout-button" href="logout.jsp" style="font-size: 20px;">Logout</a>   
        </div>
        </div>
    <div class="form-container">
        <h1>Feedback Form</h1>
        <%-- Display success or error message --%>
        <% if (request.getAttribute("success") != null) { %>
            <p class="success-message"><%= request.getAttribute("success") %></p>
        <% } %>
        <% if (request.getAttribute("error") != null) { %>
            <p class="error-message"><%= request.getAttribute("error") %></p>
        <% } %>
        <%-- Feedback form --%>
        <form action="feedback" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>
</body>
</html>