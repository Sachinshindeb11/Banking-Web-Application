package com.bank.DAO;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bank.connector.Connector;
import com.bank.DTO.Transaction;

import java.sql.Connection;
import java.sql.Date;
@SuppressWarnings("unused")
public class TransactionDAOImpl implements TransactionDAOInterface{

	@Override
	public boolean insertTransaction(Transaction t) {
			PreparedStatement ps=null;
			String query="insert into passbook(TRAN_ID,USER_ACC,REC_ACC,TRAN_DATE,TRAN_TYPE,AMOUNT,BALANCE) values(?,?,?,?,?,?,?)";
			int res=0;
			Connection con;
			try {
				Calendar calendar = Calendar.getInstance();
			     java.sql.Date date = new java.sql.Date(calendar.getTimeInMillis());
				con=Connector.requestConnection();
				ps=con.prepareStatement(query);
				ps.setLong(1, t.getTransactionid());
				ps.setLong(2, t.getUser());
				ps.setLong(3, t.getRec_acc());
				ps.setDate(4,date);
				ps.setString(5, t.getTransactionType());
				ps.setDouble(6, t.getAmount());
				ps.setDouble(7, t.getbalance());
				 res=ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(res>0) {
				return true;
			}
			
			return false;
	}

	@Override
	public ArrayList getTransaction(long user) {
		PreparedStatement ps=null;
		 ResultSet rs=null;
		 String query="SELECT * FROM PASSBOOK WHERE USER_ACC=? ORDER BY TRAN_DATE desc";
		 Transaction t=null;
		 ArrayList<Transaction> passbook=new ArrayList<Transaction>();
		 Connection con;
		try {
		 con=Connector.requestConnection();
		 ps=con.prepareStatement(query);
		 ps.setLong(1, user);
		 rs=ps.executeQuery();
		 while(rs.next())
		 {
		 t=new Transaction();
		 t.setTransactionid(rs.getLong(1));
		 t.setUser(rs.getLong(2));
		 t.setRec_acc(rs.getLong(3));
		 t.setDate(rs.getDate(4));
		 t.setTransactionType(rs.getString(5));
		 t.setAmount(rs.getDouble(6));
		 t.setbalance(rs.getDouble(7));
		 passbook.add(t);
		 }
		 } catch (SQLException e) {
		 // TODO Auto-generated catch block
		 e.printStackTrace();
		 }
		 return passbook;
	}

	@Override
	public ArrayList getTransaction() {
			PreparedStatement ps=null;
			ResultSet rs=null;
			String query="SELECT * FROM PASSBOOK ORDER BY TRAN_DATE desc";
			Transaction t=null;
			ArrayList<Transaction> passbook=new ArrayList<Transaction>();
			Connection con;
			 Calendar calendar = Calendar.getInstance();
		     java.sql.Date date = new java.sql.Date(calendar.getTimeInMillis());
			try {
				con=Connector.requestConnection();
				ps=con.prepareStatement(query);
				rs=ps.executeQuery();
				while(rs.next())
				{
					t=new Transaction();
					t.setTransactionid(rs.getLong(1));
					t.setUser(rs.getLong(2));
					t.setRec_acc(rs.getLong(3));
					t.setDate(date);
					t.setTransactionType(rs.getString(5));
					t.setAmount(rs.getDouble(6));
					t.setbalance(rs.getDouble(7));
					passbook.add(t);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return passbook;
	}
	
}
