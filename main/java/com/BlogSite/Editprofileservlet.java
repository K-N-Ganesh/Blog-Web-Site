package com.BlogSite;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Editprofileservlet
 */
public class Editprofileservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usernameString=Blog.userId;
		String username1=request.getParameter("username");
		String password1=request.getParameter("password");
		String email1=request.getParameter("email");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		try {
			Connection connection = ContentProviderClass.connectDB();
			String query = "UPDATE userinfo SET fname=?, lname=?,username=?, email=?, password=? WHERE username=?";
			PreparedStatement statement = connection.prepareStatement(query);
			statement.setString(1, fname);
			statement.setString(2, lname);
			statement.setString(3, username1);
			Blog.userId=username1;
			statement.setString(4, email1);
			statement.setString(5, password1);
			statement.setString(6, usernameString);
			
			int rowsUpdated = statement.executeUpdate();

			if (rowsUpdated > 0) {
				String query1 = "UPDATE bloginfotable SET username=? WHERE username=?";
				PreparedStatement statement1 = connection.prepareStatement(query1);
				
				statement1.setString(1, username1);

				
				statement1.setString(2, usernameString);
				
				int rowsUpdated1 = statement1.executeUpdate();
				if (rowsUpdated1 > 0) {
			    System.out.println("Profile updated successfully.");
			    
			    response.sendRedirect("profile.jsp");
				} else {
				    System.out.println("Failed to update profile.");
				}
			} else {
			    System.out.println("Failed to update profile.");
			}

			// Close the database connection and statement
			
		} catch (Exception e) {
			response.sendRedirect("profile.jsp");
			System.out.print(e.toString());
		}
	}

}
