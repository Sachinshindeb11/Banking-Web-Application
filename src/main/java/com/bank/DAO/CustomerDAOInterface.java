package com.bank.DAO;

import java.util.ArrayList;

import com.bank.DTO.Customer;

public interface CustomerDAOInterface {
		public boolean insertCustomer(Customer c);
		public Customer insertCustomers(Customer c);
		public Customer getCustomer(long accno,int pin);
		public Customer getCustomer(long phone,String mail);
		public Customer getCustomer(long accno);
		//public  ArrayList<Customer>getCustomer();
		//don't declare the below method
		@SuppressWarnings("rawtypes")
		public ArrayList getCustomer();
		public boolean updateCustomer(Customer c);
		public boolean deleteCustomer(Customer c);	
		public int totalCustomer();
}
