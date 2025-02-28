package com.bank.Servlets;

import java.io.IOException;

import com.bank.DAO.*;
import com.bank.DTO.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(true);
		Customer customer=new Customer();
		CustomerDAOInterface cdao=new CustomerDAOImpl();
		String name=req.getParameter("name");
		customer.setName(name);
		String mail=req.getParameter("mail");
		customer.setMail(mail);
		Long phone=Long.parseLong(req.getParameter("phone"));
		customer.setPhone(phone);
		int pin=Integer.parseInt(req.getParameter("pin"));
		int confirmPin=Integer.parseInt(req.getParameter("confirmPin"));
		
		if(pin==confirmPin) {
			customer.setPin(pin);
			boolean status=cdao.insertCustomer(customer);
			
			if(status) {
				session.setAttribute("success", "sign up successful");
				RequestDispatcher rd=req.getRequestDispatcher("SignUp.jsp");
				rd.forward(req, resp);
			}
			else {
				session.setAttribute("failure", "sign up failure");
				RequestDispatcher rd=req.getRequestDispatcher("SignUp.jsp");
				rd.forward(req, resp);
			}
		}
		else {
			session.setAttribute("failure", "PIN not matching");
			RequestDispatcher rd=req.getRequestDispatcher("SignUp.jsp");
			rd.forward(req, resp);
		}
		
		
	}
}
