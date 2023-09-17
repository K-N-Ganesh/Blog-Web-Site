package com.BlogSite;
public class Blog {
	int id;
	public static String  userId;
	public static int  blogid;

	String title;
	String content;	
	String path;
 public Blog(Integer id1,String title1,String content1,String path1){
	id=id1;
	 title=title1;
	 content=content1;
	 path=path1;
 }
public String getTitle() {
	return title;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPath() {
	return path;
}
public void setPath(String path) {
	this.path = path;
}
public void setTitle(String title1) {
	this.title = title1;
}
public String getContent() {
	return content;
}
public void setContent(String content1) {
	this.content = content1;
}
}

