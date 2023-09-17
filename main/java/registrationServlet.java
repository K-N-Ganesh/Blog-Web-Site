

import java.io.File;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import com.BlogSite.ContentProviderClass;


public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username1=request.getParameter("username");
		String password1=request.getParameter("password");
		String email1=request.getParameter("email");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");

		// Get the uploaded image file
		  
		 /* 
		  Part filePart =request.getPart("imageFile");
		  if(filePart!=null) {
		  String contentDisposition=filePart.getHeader("content-disposition");
          String fileName = contentDisposition.substring(contentDisposition.indexOf("filename=\"") + 10, contentDisposition.lastIndexOf("\""));
       // Create the destination file path
          String uploadDirectory="C:\\Users\\dell\\eclipse-workspace\\BlogWebApp\\src\\main\\webapp\\images";
          String filePath = uploadDirectory + File.separator + username1+".jpg";

          // Save the uploaded file to the destination path
          try (InputStream inputStream = filePart.getInputStream()) {
              Files.copy(inputStream, new File(filePath).toPath(), StandardCopyOption.REPLACE_EXISTING);
              inputStream.close();
              response.getWriter().println("File uploaded successfully.");
          }
          
          
      catch (Exception e) {
          response.getWriter().println("No file was uploaded.");
      }
		  }
		  
		*/
		HttpSession session = request.getSession();
		try {
			Connection connection=ContentProviderClass.connectDB();
			 PreparedStatement statement = connection.prepareStatement("insert into  userinfo values('"+fname+"','"+lname+"','"+username1+"','"+email1+"','"+password1+"')");
	            // Execute the query
	            int rowsInserted = statement.executeUpdate();
	            if (rowsInserted > 0) {
	    	        // Set a session attribute
	    	        session.setAttribute("registration",  "true");
	    			
	            	
	         // Prepare the SQL statement
	            session.setAttribute("register", "true");
	            response.sendRedirect("newindex.jsp");
	            }
		} catch (Exception e) {
			response.sendRedirect("newindex.jsp");
			System.out.print(e.toString());
		}
		
	}

}
