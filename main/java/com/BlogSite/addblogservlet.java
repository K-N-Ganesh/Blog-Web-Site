package com.BlogSite;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class addblogservlet
 */
@MultipartConfig(
		location = "C:\\Users\\dell\\Pictures\\images"
		)
public class addblogservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = Blog.userId;
		 String title1=request.getParameter("title");
			String content1=request.getParameter("content");
			Part filePart =request.getPart("imgSrc");
			 Connection connection=ContentProviderClass.connectDB();
			 int id1 = 0;
				 
			
				 try {
				        PreparedStatement statement1 = connection.prepareStatement("insert into  bloginfotable(username, title, content) values('" + username + "','" + title1 + "','" + content1 + "')");
				        // Execute the query
				        int rowsInserted = statement1.executeUpdate();
				        if (rowsInserted > 0) {
				           
				        }
				    } catch (Exception e) {
				        response.sendRedirect("home.jsp");
				    }
				 try {
					 Statement statement=connection.createStatement();
						ResultSet ResultSet= statement.executeQuery("SELECT MAX(id) AS maxId FROM bloginfotable");
						
						if(ResultSet.next()) {
							 id1=ResultSet.getInt("maxId");
							
							 System.out.print(filePart);
						}
					 }catch (Exception e) {
					 }
					
			if (filePart != null && filePart.getSize() > 0) {
			    String contentDisposition = filePart.getHeader("content-disposition");
			    String fileName = contentDisposition.substring(contentDisposition.indexOf("filename=\"") + 10, contentDisposition.lastIndexOf("\""));

			    // Create the destination file path
			    String uploadDirectory = "C:\\Users\\dell\\eclipse-workspace\\BlogWebApp\\src\\main\\webapp\\images";
			    String filePath = uploadDirectory + File.separator + id1 + ".jpg";

			    // Save the uploaded file to the destination path
			    try (InputStream inputStream = filePart.getInputStream()) {
			        Files.copy(inputStream, new File(filePath).toPath(), StandardCopyOption.REPLACE_EXISTING);
			        inputStream.close();
			        System.out.println("File uploaded successfully.");
			    } catch (Exception e) {
			        System.out.println("No file was uploaded.");
			    }

			    try {
			        String path = "images/" + id1 + ".jpg";
			        System.out.print(path);
			        String updateQuery = "UPDATE bloginfotable SET path1 = ? WHERE id = ?";

			        PreparedStatement statement2 = connection.prepareStatement(updateQuery);
			        statement2.setString(1, path);
			        statement2.setInt(2, id1);

			        int rowsUpdated = statement2.executeUpdate();
			        if (rowsUpdated > 0) {
			        	response.sendRedirect("home.jsp");
			        } else {
			        	response.sendRedirect("home.jsp");
			        }
			    } catch (Exception e) {
			        response.sendRedirect("home.jsp");
			    }
			} 
			else {
				response.sendRedirect("home.jsp");
			}

	}
}
	


