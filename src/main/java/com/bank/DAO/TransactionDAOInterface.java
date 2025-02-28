package com.bank.DAO;
import java.util.ArrayList;

import com.bank.DTO.Transaction;
public interface TransactionDAOInterface {
	public boolean insertTransaction(Transaction t);
	public ArrayList getTransaction(long user);
	public ArrayList getTransaction();
}
