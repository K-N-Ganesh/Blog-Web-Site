<%@page import="com.BlogSite.Blog"%>
<%@page import="com.BlogSite.content1"%>
<%@page import="com.BlogSite.ContentProviderClass"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import=" com.BlogSite.blog1" %>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blog Website</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
        <a class="active" href="home.jsp">Home</a>
        <a href="addblog.jsp">Blog</a>
        <a href="feedback.jsp">Feedback</a>
        
        <div class="logout-container">
 
        <a href="profile.jsp"><img src="ppic.png" alt="Image Button"></a>
            <a class="logout-button" href="logout.jsp" style="font-size: 20px;">Logout</a>   
        </div>
        </div>
       <div class="blog-list"> 
   <% 
   try{
      

   String username=Blog.userId;
   Blog.userId=username;
   content1 blog = new content1();
    List<blog1> blogs= new ArrayList<blog1>() ;
    blogs=blog.data();
     for (blog1 blog1 : blogs) { %>
    <div class="blog-container">
        <h2><%= blog1.getTitle() %></h2>
        <p><%= blog1.getContent() %></p>
        <% if (blog1.getPath() != null) {
            String imagePath = blog1.getPath();
            String altText = "";
            out.println("<img src=\"" + imagePath + "\" alt=\"" + altText + "\" width=\"500\" height=\"300\">");
			
        } %>
     <p>By: <%= blog1.getUserId() %></p>
     
      </div>
 <%}
   }
   catch(Exception e){
   }
   finally{
   }%>
   </div>
</body>
</html>
