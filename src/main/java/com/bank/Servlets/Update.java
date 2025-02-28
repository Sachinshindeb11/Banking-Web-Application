package com.bank.Servlets;

import java.io.IOException;

import com.bank.DTO.*;
import com.bank.DAO.CustomerDAOImpl;
import com.bank.DAO.CustomerDAOInterface;
import com.bank.DTO.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Update")
public class Update extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session =req.getSession(false);
		Customer c=(Customer)session.getAttribute("customer");
		CustomerDAOInterface cdao=new CustomerDAOImpl();
		String name=req.getParameter("name");
		c.setName(name);
		String mail=req.getParameter("mail");
		c.setMail(mail);
		Long phone=Long.parseLong(req.getParameter("phone"));
		c.setPhone(phone);
		int confirmPin=Integer.parseInt(req.getParameter("pin"));
		int yourPin=c.getPin();
		
		if(yourPin==confirmPin) {
			boolean result=cdao.updateCustomer(c);
			if(result) {
				session.setAttribute("updatesuccess", "Update Success");
				RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
				rd.forward(req, resp);
			}
			else {
				session.setAttribute("updatefailure", "Update Failure");
				RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
				rd.forward(req, resp);
			}
		}
		else {
			session.setAttribute("updatefailure", "entered PIN doesnt match with your PIN");
			RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
			rd.forward(req, resp);
		}
	}
}

