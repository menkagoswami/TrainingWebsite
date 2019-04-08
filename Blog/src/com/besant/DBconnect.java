package com.besant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBconnect {

	public Map<String,String> loginAuth(String email, String pass) throws SQLException, ClassNotFoundException {
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		String message="error";
		String uname = null;
		String emaildb = null;
		String password=null;
		Map<String,String> ls = new HashMap<String,String>();
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
			stmt=con.createStatement();
			rs=stmt.executeQuery("select name,password,email from users where email='"+email+"'");
			
			while(rs.next()) {
				
				uname=rs.getString(1);
				password=rs.getString(2);
				emaildb =rs.getString(3);
				
				ls.put("emaildb", emaildb);
				ls.put("uname", uname);
				ls.put("password", password);
				
				if((emaildb.equalsIgnoreCase(email))&&(password.equalsIgnoreCase(pass))) {
					message="success";
					ls.put("message",message);
				}
			}	
			ls.put("message",message);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			con.close();
			stmt.close();
			rs.close();
		}
		
		return ls;
	}

	public List<Object> regAuth(String name, String pass, String emailto, String phn,String status	) throws SQLException {

		Connection con = null;
		PreparedStatement pstmt = null;
		Statement stmt=null;
		ResultSet rs=null;
		int userid;
		String message="success";
		List<Object> ls= new ArrayList<Object>();
		try {
			
			Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
			pstmt = con.prepareStatement("insert into users values (?,?,?,?,?,?)");
			pstmt.setString(1, null);
			pstmt.setString(2, name);
			pstmt.setString(3, pass);
			pstmt.setString(4, emailto);
			pstmt.setString(5, phn);
			pstmt.setString(6, status);
			int result = pstmt.executeUpdate();
			
			
			if(result == 1) {
				message = "success";
				stmt=con.createStatement();
				rs=stmt.executeQuery("select id from users where email='"+emailto+"'");
				while(rs.next()) {
					
					userid=rs.getInt(1);
					ls.add(userid);
					ls.add(message);
				//	System.out.println(userid);
				//	System.out.println(message);
				}
		}
			} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			con.close();
			pstmt.close();

		}

		return ls;
	}
	
public String billingInfo(Billing b) throws SQLException {
		
		PreparedStatement pstmt = null;
		Connection con = null;
		String message = "error";
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
			pstmt=con.prepareStatement("insert into customer values (?,?,?,?,?,?,?,?)");
			pstmt.setString(1, b.getName());		
			pstmt.setString(2, b.getEmail());
			pstmt.setLong(3,Long.parseLong(b.getcontactno()));
			
			pstmt.setString(4, b.getCity());
			pstmt.setString(5, b.getState());
			pstmt.setString(6, b.getAddress1());
			pstmt.setString(7, b.getAddress2());
			pstmt.setInt(8, Integer.parseInt(b.getPin()));
			
			int result = pstmt.executeUpdate();
			
			if(result == 1) {
				message = "success";
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		finally {
			con.close();
			pstmt.close();

		}

		return message;
	}


public String status(String email) throws SQLException {
	
	Connection con = null;
	Statement stmt = null;

	String message = "error";
	try {
		System.out.println("inside");
		Class.forName("com.mysql.jdbc.Driver"); 
		System.out.println(email);
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
		stmt = con.createStatement();
		int result = stmt.executeUpdate("update cart set paidstatus='1' where email='"+email+"'");
		if(result >0) {
			message = "success";
			
		}
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}finally {
		con.close();
		stmt.close();

	}

	return message;
}

public String registerdemo(String name, String emailto, String course, String tutor) throws SQLException {

	Connection con = null;
	PreparedStatement pstmt = null;

	String message = "error";
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
		pstmt = con.prepareStatement("insert into demo values (?,?,?,?)");
		pstmt.setString(1, name);
		pstmt.setString(2, emailto);
		pstmt.setString(3, course);
		pstmt.setString(4, tutor);
		int result = pstmt.executeUpdate();
		
		if(result == 1) {
			message = "success";
		}
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}finally {
		con.close();
		pstmt.close();

	}

	return message;
	
}
public String entryHash(String hash) throws SQLException {
	Connection con = null;
	PreparedStatement pstmt = null;

	String message = "error";
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
		pstmt = con.prepareStatement("insert into user_authentication values (?,?)");
		pstmt.setString(1, null);
		pstmt.setString(2, hash);
		
		int result = pstmt.executeUpdate();
		
		if(result == 1) {
			message = "success";
		}
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}finally {
		con.close();
		pstmt.close();

	}
	return message;
}

public String userActive(String hash) throws SQLException {
	
	Connection con = null;
	Statement stmt = null;

	String message = "error";
	try {
		System.out.println("inside");
		Class.forName("com.mysql.jdbc.Driver"); 
		System.out.println(hash);
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
		stmt = con.createStatement();
		int result = stmt.executeUpdate("update users set status='active' where id='(select userid from user_authentication where hash='"+hash+"'");
		if(result >0) {
			message = "success";
			
		}
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}finally {
		con.close();
		stmt.close();

	}

	return message;
}


}

