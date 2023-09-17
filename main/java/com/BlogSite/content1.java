package com.BlogSite;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class content1 {
	public   List<blog1> data(){
		 Connection connection;
		 
		 List<blog1> blogs = new ArrayList<blog1>();
	
		   try {
		       
		       connection =    ContentProviderClass.connectDB();         // Step 2: Execute database query
		       Statement statement = connection.createStatement();
		       ResultSet resultSet = statement.executeQuery("SELECT * FROM bloginfotable"); // Replace "blogs" with your actual table name
		       
		       // Step 3: Retrieve and process the data
		      
		       
		       while (resultSet.next()) {
		    	   int id=resultSet.getInt("id");
	               String username=resultSet.getString("username");
	               String title = resultSet.getString("title");
	               String content = resultSet.getString("content");
	               String path=resultSet.getString("path1");
	               // Create a Blog object and add it to the list
	             
	               blog1 blog = new blog1(id,username,title, content,path);
	                blogs.add(blog);
	           }
	           
		          
		       
		       resultSet.close();
		       statement.close();
		       
		       
		    	   
		       
		       
		       
		   } 
		   catch (Exception e) {
		       e.printStackTrace();
		   }
		 return  blogs;
	 }
}
