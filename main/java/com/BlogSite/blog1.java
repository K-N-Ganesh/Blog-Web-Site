package com.BlogSite;

public class blog1 {
	int id;
	 String  userId;
	String title;
	String content;	
	String path;
 public blog1(int idInteger, String username ,String title1,String content1,String path1){
	userId=username;
	 title=title1;
	 content=content1;
	 path=path1;
	 id=idInteger;
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
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getTitle() {
	return title;
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