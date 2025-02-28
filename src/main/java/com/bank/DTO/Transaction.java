package com.bank.DTO;
import java.sql.Date;
public class Transaction {
	private long transactionid;
	private long user;
	private long rec_acc;
	private Date date;
	private String transaction;
	private double amount;
	private double balance;
	public long getTransactionid() {
		return transactionid;
	}
	public void setTransactionid(long transactionid) {
		this.transactionid = transactionid;
	}
	public long getUser() {
		return user;
	}
	public void setUser(long user) {
		this.user = user;
	}
	public long getRec_acc() {
		return rec_acc;
	}
	public void setRec_acc(long rec_acc) {
		this.rec_acc = rec_acc;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getTransactionType() {
		return transaction;
	}
	public void setTransactionType(String l) {
		this.transaction = l;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getbalance() {
		return balance;
	}
	public void setbalance(double balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "Transaction [transactionid=" + transactionid + ", user=" + user + ", rec_acc=" + rec_acc + ", date="
				+ date + ", transaction=" + transaction + ", amount=" + amount + ", Tbalance=" + balance + "]";
	}
	
	
}
