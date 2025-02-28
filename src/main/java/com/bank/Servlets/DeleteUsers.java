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

@WebServlet("/deleteuser")
public class DeleteUsers extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        
        if (session == null) {
            session = req.getSession();
        }

        Long accNo = Long.parseLong(req.getParameter("delete"));
        CustomerDAOImpl cdao = new CustomerDAOImpl();
        Customer c = cdao.getCustomer(accNo);
        System.out.println(c);
        if (accNo != 3) { 
            if (c != null) {
                cdao.deleteCustomer(c);
                session.setAttribute("deletesuccess", "User deleted successfully.");
            } else {
                session.setAttribute("deletefailure", "User deletion failed: User not found.");
            }
        } else {
            session.setAttribute("deletefailure", "Admin account cannot be deleted.");
        }


        RequestDispatcher rd = req.getRequestDispatcher("Admin.jsp");
        rd.forward(req, resp);
    }
}

