package techblog.entites;

import java.security.Timestamp;
import java.sql.*;
public class user {
private int id;
private String name;
private String email;
private String password;
private String gender;
private Timestamp date;
private String about;
private String profile;
public user(int id, String name, String email, String password, String gender, Timestamp date, String about,String profile) {
	
	this.id = id;
	this.name = name;
	this.email = email;
	this.password = password;
	this.gender = gender;
	this.date = date;
	this.about = about;
	this.profile=profile;
}
public user() {
	
}
public user(String name, String email, String password, String gender, String about) {
	
	this.name = name;
	this.email = email;
	this.password = password;
	this.gender = gender;
	this.about = about;
}
public int getId() {
	
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	
	return name;
}
public void setName(String name) {
	
	this.name = name;
}
public String getEmail() {

	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getGender() {
	
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Timestamp getDate() {
	
	return date;
}
public String getProfile() {
	return profile;
}
public void setProfile(String profile) {
	this.profile = profile;
}
public void setDate(Timestamp date) {
	this.date = date;
}
public String getAbout() {
	
	return about;
}
public void setAbout(String about) {
	this.about = about;
}


}
