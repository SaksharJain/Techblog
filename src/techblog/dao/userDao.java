package techblog.dao;
import java.sql.*;

import techblog.entites.user;
import techblog.servlet.Connectionprovider;

public class userDao {
	public static Connection con;
public userDao(Connection con) {
		this.con=con;
	}

	public boolean saveuser(user u) {
		boolean f=false;
		try {
		//user ->Database
		String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
		
		PreparedStatement pstmt=this.con.prepareStatement(query);
		
		pstmt.setString(1, u.getName());
		pstmt.setString(2, u.getEmail());
		pstmt.setString(3, u.getPassword());
		pstmt.setString(4, u.getGender());
		pstmt.setString(5, u.getAbout());
		pstmt.executeUpdate();
		f=true;
		
		}
		catch(Exception e){
			f=false;
			e.printStackTrace();
		}
		return  f;
	}	
	//get user by email and password
	 public user getuser(String email,String password) {
		 user user=null;
		 try{
			String query="select * from user where email=? and password=?" ;
					PreparedStatement pstmt=con.prepareStatement(query);
					pstmt.setString(1, email);
					pstmt.setString(2, password);
					ResultSet set=pstmt.executeQuery();
					if(set.next()) {
						user=new user();
						String name=set.getString("name");
						user.setName(name);
						user.setId(set.getInt("id"));
						user.setEmail(set.getString("email"));
						user.setProfile(set.getString("profile"));
						user.setGender(set.getString("gender"));
						user.setAbout(set.getString("about"));
					}
		    }
		 catch (Exception e) {
			 e.printStackTrace();
		 }
		 return user;
	 }
	 public boolean updateUser(user user) {

	        boolean f = false;
	        try {

	            String query = "update user set name=? , email=? , password=? , gender=? ,about=? where  id =?";
	            PreparedStatement p = con.prepareStatement(query);
	            p.setString(1, user.getName());
	            p.setString(2, user.getEmail());
	            p.setString(3, user.getPassword());
	            p.setString(4, user.getGender());
	            p.setString(5, user.getAbout());
	            p.setInt(6, user.getId());
	           

	            p.executeUpdate();
	            f = true;

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return f;
	    }
}