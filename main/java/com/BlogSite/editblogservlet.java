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
 * Servlet implementation class editblogservlet
 */
public class editblogservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int  blogId =Blog.blogid;
		System.out.print(blogId);
		String title1=request.getParameter("title");
		String content1=request.getParameter("content");
		try {
			 Connection connection=ContentProviderClass.connectDB();
			 
		    PreparedStatement statement1 = connection.prepareStatement("UPDATE bloginfotable SET title = ?, content = ? WHERE id = ?");
		    statement1.setString(1, title1);
		    statement1.setString(2, content1);
		    statement1.setInt(3, blogId);

		    // Execute the query
		    int rowsUpdated = statement1.executeUpdate();
		    if (rowsUpdated > 0) {
		        response.sendRedirect("home.jsp");
		    }
		} catch (SQLException e) {
		    e.printStackTrace();
		}


	}

}
