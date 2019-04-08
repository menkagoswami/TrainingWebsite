package com.besant;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		HttpSession session = req.getSession();
		String bookdescr = req.getParameter("book");
		int price = Integer.parseInt(req.getParameter("price"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		String username = (String) session.getAttribute("username");
		String email = (String) session.getAttribute("email");
		int paidstatus = Integer.parseInt(req.getParameter("paidstatus"));
		System.out.println(bookdescr);
		System.out.println(price);
		System.out.println(quantity);
		System.out.println(username);
		System.out.println(email);
		System.out.println(paidstatus);

		String result = null;
		DBconnectCart db = new DBconnectCart();

		try {
			result = db.cart(price, quantity, email, username, bookdescr,paidstatus);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (result.equalsIgnoreCase("success")) {
			RequestDispatcher rd = req.getRequestDispatcher("cart.jsp");
			try {
				rd.forward(req, res);
			} catch (Exception e) {

				e.printStackTrace();
			}
		}

		else {
			res.sendRedirect("errorlogin.jsp");
		}
	}

}
