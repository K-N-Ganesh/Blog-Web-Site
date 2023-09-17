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
 * Servlet implementation class DeleteBlogServlet
 */
public class DeleteBlogServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int  id = Integer.parseInt(request.getParameter("id")); 
		 try {
	            // Establish database connection
	            Connection connection = ContentProviderClass.connectDB();
	            
	            // Prepare the delete statement
	            String deleteQuery = "DELETE FROM bloginfotable WHERE id = ?";
	            PreparedStatement statement = connection.prepareStatement(deleteQuery);
	            
	            // Set the parameter values
	            statement.setInt(1, id);
	            
	            // Execute the delete statement
	            int rowsAffected = statement.executeUpdate();
	            
	            if (rowsAffected > 0) {
	                System.out.println("Row deleted successfully.");
	                response.sendRedirect("profile.jsp");
	            } else {
	                System.out.println("No row found with the specified ID.");
	            }
	            
	           
	           
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

}
