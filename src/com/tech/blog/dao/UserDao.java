package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.tech.blog.entities.User;

public class UserDao {
private Connection con;

public UserDao(Connection con) {
	super();
	this.con = con;
}
// method to insert user to data base:
public boolean saveUser(User user) {
	boolean f= false;
	try {
		String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
		PreparedStatement ps = this.con.prepareStatement(query);
		ps.setString(1, user.getName());
		ps.setString(2, user.getEmail());
		ps.setString(3, user.getPassword());
		ps.setString(4, user.getGender());
		ps.setString(5, user.getAbout());
		ps.executeUpdate();
		f=true;
	} catch (Exception e) {
		e.printStackTrace();
	}
	return f;	
}
}
