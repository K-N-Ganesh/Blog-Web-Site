package com.BlogSite;

import java.io.IOException;


import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginController extends HttpServlet {
	
	
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username1=request.getParameter("username");
		String password1=request.getParameter("password");
		System.out.print("dugdsc iy cisd c");
		try {
			HttpSession session = request.getSession();
			Connection connection=ContentProviderClass.connectDB();
			Statement statement=connection.createStatement();
			ResultSet ResultSet= statement.executeQuery("select * from userinfo where username= '" + username1 + "' AND password = '" + password1 + "'");
			
			if(ResultSet.next()) {
				System.out.print("dugdsc iy cisd c");
				Blog.userId=username1;
				
		        // Set a session attribute
		        session.setAttribute("login", "true");
		       
		       if(username1.equals("admin"))
					response.sendRedirect("viewfback.jsp");
		       else
				response.sendRedirect("home.jsp");
			}
			else {
				session.setAttribute("login", "false");
		
				response.sendRedirect("newindex.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	

}
