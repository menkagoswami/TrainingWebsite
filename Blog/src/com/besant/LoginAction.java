
package com.besant;

import java.io.IOException;

import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException{
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String name=null; 
		Map<String,String> result=null;
		DBconnect db=new DBconnect();
	

		try {
		result=db.loginAuth(email,pass);
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		if(result.get("message").equalsIgnoreCase("success")) {
			  HttpSession session=req.getSession();  
			session.setAttribute("username",result.get("uname").toString());
			session.setAttribute("email",result.get("emaildb").toString());
			RequestDispatcher rd = req.getRequestDispatcher("welcome.jsp");
			try {
				rd.forward(req, res);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else{
			res.sendRedirect("errorlogin.jsp");
		}
	}
	
}	

