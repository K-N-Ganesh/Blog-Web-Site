<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="com.BlogSite.content"%>
<%@page import="com.BlogSite.ContentProviderClass"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import=" com.BlogSite.Blog" %>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Profile</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css">
  <style>
  
  body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
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

.profile-card {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  background-color: #fff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  border-radius: 5px;
}

.profile-card h2 {
  color: #333;
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 10px;
}

.profile-card p {
  color: #666;
  margin-bottom: 10px;
}

.profile-card .profile-image {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  overflow: hidden;
  margin: 0 auto 20px;
}

.profile-card .profile-image img {
  width: 100%;
  height: auto;
  object-fit: cover;
}

.blog-container {
  max-width: 500px;
  margin: 100px auto; /* Updated margin to center horizontally */
  border: 1px solid #ddd;
  padding: 20px;
  border-radius: 5px;
  background-color: #f9f9f9;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.blog-container h2 {
  font-size: 24px;
  margin-bottom: 10px;
}

.blog-container p {
  font-size: 16px;
  margin-bottom: 15px;
}

.blog-container img {
  max-width: 100%;
  height: auto;
  display: block;
  margin-bottom: 15px;
}

.blog-container p.author {
  font-size: 14px;
  color: #888;
}

.blog-post {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 50px; /* Added margin-top to create space between container and blog */
}


    
  </style>
</head>
<body>
<div class="topnav">
        <a  href="home.jsp">Home</a>
        <a href="addblog.jsp">Blog</a>
       <a  href="feedback.jsp">Feed Back</a>
        <div class="logout-container">
 
        <a class="active" href="profile.jsp"><img src="images/ppic.png" alt="Image Button"></a>
            <a class="logout-button" href="logout.jsp" style="font-size: 20px;">Logout</a>   
        </div>
        </div>
<%
String username1 =Blog.userId;
Connection connection=ContentProviderClass.connectDB();
Statement statement=connection.createStatement();
ResultSet resultSet= statement.executeQuery("select * from userinfo where username= '" + username1 + "'");
String username=null,password=null,email=null;
if(resultSet.next()) { 
	username=resultSet.getString("username");
	 password=resultSet.getString("password");
email=resultSet.getString("email");
} %>
  <div class="container">
    <div class="profile-card">
      <h2><%=username %></h2>
      <p>Email: <%=email %></p>
            
      <a href="edit.jsp" class="btn btn-primary">Edit Profile</a>
      
    </div>
  </div>
   <div class="blog-list"> 
  
  <% 
   try{
   
   content blog = new content();
    List<Blog> blogs= new ArrayList<Blog>() ;
    blogs=blog.data(username1);
     for (Blog blog1 : blogs  ) { %>
     <div class="blog-container">
        <h2 ><%= blog1.getTitle() %></h2>
        <%
if (blog1.getPath() !=null) {
    String imagePath = blog1.getPath();
    String alttext = "";
    out.println("<img src=\"" + imagePath + "\" alt=\"" + alttext + "\" width=\"500\" height=\"300\">");

}
%>
        <p><%= blog1.getContent() %></p>
        
        <p>By: <%= Blog.userId %></p>
         <a href="editblog.jsp?id=<%= blog1.getId() %>" class="edit-button">Edit Blog</a><br>
          <a href="DeleteBlog?id=<%= blog1.getId() %>" class="edit-button">Delete Blog</a>
         </div>
   <%
     }
   }
   catch(Exception exception){
	   response.sendRedirect("index.jsp");
   }
   finally{   
   }
   %> 
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
