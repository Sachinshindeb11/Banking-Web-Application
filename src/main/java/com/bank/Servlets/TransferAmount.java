package com.bank.Servlets;

import java.io.IOException;

import com.bank.DTO.Customer;
import com.bank.DTO.Transaction;
import com.bank.DTO.TransactionID;
import com.bank.DTO.*;
import com.bank.DAO.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/TransferAmount")
public class TransferAmount extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(false);
		Customer c=(Customer)session.getAttribute("customer");
		
		Transaction t1=null; //sender transaction details Transaction t2=null; //receiver transaction details TransactionDAO tdao=new TransactionDAOImpl();
		Transaction t2=null;
		TransactionDAOInterface tdao=new TransactionDAOImpl();
		
		CustomerDAOInterface cdao=new CustomerDAOImpl();
		long reciever=Long.parseLong(req.getParameter("account"));
		System.out.println(reciever);
		Customer recieverAccount=cdao.getCustomer(reciever);
		double amount=Double.parseDouble(req.getParameter("amount"));
		int pin=c.getPin();
		int confirmPin=Integer.parseInt(req.getParameter("pin"));
		
		if(c.getAccno()!=reciever) {
		if(pin==confirmPin){
			if(amount<=c.getBalance()) {
				c.setBalance(c.getBalance()-amount);
				recieverAccount.setBalance(recieverAccount.getBalance()+amount);
				boolean res1=cdao.updateCustomer(c);
				if(res1) {
					t1=new Transaction();

					 t1.setTransactionid(TransactionID.generateTrasactionID());
					 t1.setUser(c.getAccno());
					 t1.setRec_acc(recieverAccount.getAccno());
					 t1.setTransactionType("DEBITED");
					 t1.setAmount(amount);
					 t1.setbalance(c.getBalance());
					 boolean transaction1=tdao.insertTransaction(t1);
					 if(transaction1) {
						 System.out.println("sender transaction success");
					 }
					 else {
						 System.out.println("sender transaction failure");
					 }
				}
				boolean res2=cdao.updateCustomer(recieverAccount);
				if(res2) {
					t2=new Transaction();
					t2.setTransactionid(t1.getTransactionid());
					t2.setUser(recieverAccount.getAccno());
					t2.setRec_acc(c.getAccno());
					t2.setTransactionType("CREDITED");
					t2.setAmount(amount);
					t2.setbalance(recieverAccount.getBalance());
					boolean transaction2=tdao.insertTransaction(t2);
					if(transaction2) {
						 System.out.println("reciever transaction success");
					 }
					 else {
						 System.out.println("reciever transaction failure");
					 }
				}
					if(res1&&res2) {
							session.setAttribute("transfersuccess", "Amount transfered successfully");
							RequestDispatcher rd=req.getRequestDispatcher("TransferAmount.jsp");
							rd.forward(req, resp);
					}
					else{
						session.setAttribute("transferfailure", "Amount transfer failure");
						RequestDispatcher rd=req.getRequestDispatcher("TransferAmount.jsp");
						rd.forward(req, resp);
					}
			}
		else {
			session.setAttribute("transferfailure", "Incorrect PIN");
			RequestDispatcher rd=req.getRequestDispatcher("TransferAmount.jsp");
			rd.forward(req, resp);
			}
		}
		}
		else {
			session.setAttribute("transferfailure", "Cannot transfer to your own account");
			RequestDispatcher rd=req.getRequestDispatcher("TransferAmount.jsp");
			rd.forward(req, resp);
		}
	}
}
