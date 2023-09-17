<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.BlogSite.Blog"%>
<%@page import="com.BlogSite.Feedback"%>
<%@page import="com.BlogSite.ContentProviderClass"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import=" com.BlogSite.blog1" %>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedbacks</title>
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
    <h1>Feedbacks</h1>
   
        <%
        List<Feedback> feedbackList = new ArrayList<Feedback>();
        Connection connection = ContentProviderClass.connectDB();
        try {
            String sql = "SELECT * FROM feedback ORDER BY id DESC";

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                String name = resultSet.getString("username");
                String email = resultSet.getString("email");
                String message = resultSet.getString("message");
            

                Feedback feedback = new Feedback(name, email, message);
                feedbackList.add(feedback);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any potential errors here
        }

        
            for (Feedback  f : feedbackList) { %>
    <div class="blog-container">
   
    
             
			<p><%=f.getName() %>
     <p> <%= f.getEmail() %></p>
     <p> <%= f.getMessage() %></p>
     
      </div>
        <%} %>
    
</body>
</html>
