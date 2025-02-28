package com.bank.Servlets;

import java.io.IOException;

import com.bank.DAO.*;
import com.bank.DTO.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(true);
		Customer c;
		CustomerDAOInterface cdao=new CustomerDAOImpl();
		long accNum=Long.parseLong(req.getParameter("account"));
		System.out.println(accNum);
		int pin=Integer.parseInt(req.getParameter("pin"));
		System.out.println(pin);
		c=cdao.getCustomer(accNum, pin);
		System.out.println(c);
		if(c!=null) {
			session.setAttribute("customer", c);
			RequestDispatcher rd=req.getRequestDispatcher("Dashboard.jsp");
			rd.forward(req, resp);
		}
		else {
			session.setAttribute("failure", "Incorrect account number or pin");
			RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
			rd.forward(req, resp);
		}
	}
}
