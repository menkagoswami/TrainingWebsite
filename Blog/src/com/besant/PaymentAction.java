package com.besant;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PaymentAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		String name = request.getParameter("name");
		String contactno = request.getParameter("contactno");
		String email = (String) session.getAttribute("email");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String pin = request.getParameter("pin");
		

		System.out.println(name);
		System.out.println(email);
		System.out.println(pin);
		System.out.println(address1);

		String result = null;
		DBconnect db = new DBconnect();
		try {

			Billing b = new Billing();
			b.setName(name);
			b.setEmail(email);
			b.setContactno(contactno);

			b.setCity(city);
			b.setAddress1(address1);
			b.setAddress2(address2);
			b.setState(state);
			b.setPin(pin);

			result = db.billingInfo(b);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (result.equalsIgnoreCase("success")) {
			RequestDispatcher rd = request.getRequestDispatcher("payment.jsp");
			rd.forward(request, response);
		}

		else {
			response.sendRedirect("errorlogin.jsp");
		}
	}

}
