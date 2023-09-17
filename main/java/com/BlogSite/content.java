package com.BlogSite;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






public class content {
	public   List<Blog> data(String username){
		 Connection connection;
		 
		 List<Blog> blogs = new ArrayList<Blog>();
		 Blog.userId=username;
		 String str=username;
		   try {
		       
		       connection =    ContentProviderClass.connectDB();         // Step 2: Execute database query
		       Statement statement = connection.createStatement();
		       ResultSet resultSet = statement.executeQuery("SELECT * FROM bloginfotable where username='"+str+"'"); // Replace "blogs" with your actual table name
		       
		       // Step 3: Retrieve and process the data
		      
		       
		       while (resultSet.next()) {
	               int id=resultSet.getInt("id");
	               String title = resultSet.getString("title");
	               String content = resultSet.getString("content");
	               String path=resultSet.getString("path1");
	               // Create a Blog object and add it to the list
	             
	               Blog blog = new Blog(id,title, content,path);
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
