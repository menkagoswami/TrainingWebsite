package com.besant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBconnectCart {

	public String cart(int price, int quantity, String email, String username,String bookdescr,int paidstatus) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		String message = "error";
		System.out.println("hello in dbconnectcart");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog", "root", null);
			pstmt = con.prepareStatement("insert into cart values (?,?,?,?,?,?)");
			pstmt.setString(1, username);
			pstmt.setString(2, email);
			pstmt.setInt(3, quantity);
			pstmt.setInt(4, price);
			pstmt.setString(5, bookdescr);
			pstmt.setInt(6, paidstatus);
			System.out.println("hello in dbconnecttry");
			int result = pstmt.executeUpdate();
			if (result == 1) {
				message = "success";
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
			pstmt.close();

		}

		return message;
	}
}
