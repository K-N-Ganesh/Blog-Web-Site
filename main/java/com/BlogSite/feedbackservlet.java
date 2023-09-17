package com.BlogSite;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbackservlet
 */
public class feedbackservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Validate the input data if required

        insertFeedback(name, email, message);
        response.sendRedirect("profile.jsp");
        // Redirect or display success message
    }

    private void insertFeedback(String name, String email, String message) {
    	Connection connection=ContentProviderClass.connectDB();
        try  {
            String sql = "INSERT INTO feedback (username, email, message) VALUES (?, ?, ?)";

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, message);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
               
            }
        } catch (SQLException e) {
           
        }
		
    }
}
