package com.bank.Servlets;

import java.io.IOException;
import java.util.Calendar;

import com.bank.DTO.Customer;
import com.bank.DTO.Transaction;
import com.bank.DTO.TransactionID;
import com.bank.DAO.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Deposit")
public class Deposit extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(false);
		Customer c=(Customer)session.getAttribute("customer");
		CustomerDAOImpl cdao=new CustomerDAOImpl();
		Double amount=Double.parseDouble(req.getParameter("amount"));
		int pin=Integer.parseInt(req.getParameter("pin"));
		int confirmPin=c.getPin();
		if(pin==confirmPin) {
			if(amount>0) {
			c.setBalance(c.getBalance()+amount);
			boolean res=cdao.updateCustomer(c);
				if(res) {
					Transaction t=new Transaction();
					TransactionDAOInterface tdao=new TransactionDAOImpl();
					 t.setTransactionid(TransactionID.generateTrasactionID());
					 t.setUser(c.getAccno());
					 t.setRec_acc(c.getAccno());
					 t.setTransactionType("CREDITED");
					 t.setAmount(amount);
					 t.setbalance(c.getBalance());
					 Calendar calendar = Calendar.getInstance();
				     java.sql.Date date = new java.sql.Date(calendar.getTimeInMillis());
				     t.setDate(date);
					 boolean res1=tdao.insertTransaction(t);
				
					session.setAttribute("depositsuccess", "Amount deposited successfully");
					RequestDispatcher rd=req.getRequestDispatcher("Deposit.jsp");
					rd.forward(req, resp);
				}
			}
			else {
			session.setAttribute("depositfailure", "Invalid Amount");
			RequestDispatcher rd=req.getRequestDispatcher("Deposit.jsp");
			rd.forward(req, resp);
			}
		}
		else {
			session.setAttribute("depositfailure", "Incorrect-PIN");
			RequestDispatcher rd=req.getRequestDispatcher("Deposit.jsp");
			rd.forward(req, resp);
		}
	}
}

