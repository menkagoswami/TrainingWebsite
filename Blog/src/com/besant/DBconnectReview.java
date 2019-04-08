package com.besant;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DBconnectReview {

	public String reviewSubmit(String name,String email, String commentreview,long phnno) throws  IOException ,  SQLException {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		String message="error";
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",null);
			pstmt = con.prepareStatement("insert into reviews values (?,?,?,?)");
			
			pstmt.setString(1, email);
			pstmt.setString(2, commentreview);
			pstmt.setLong(3, phnno);
			pstmt.setString(4, name);
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
}

		
		
		
		
		
		
		
		
		
		
