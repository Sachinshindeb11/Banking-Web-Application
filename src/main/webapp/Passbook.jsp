<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bank.DAO.*" %>
<%@ page import="com.bank.DTO.*" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passbook</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
        	background-image: url('<%= request.getContextPath() %>/images/bank.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height: 100vh;
            margin: 0; 
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }


        .passbook-card {
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 30px;
            border-radius: 10px;
            width: 90%;
            max-width: 800px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1);
        }
 
        .table-container {
            max-height: 400px;
            overflow-y: auto;
            margin-top: 20px;
        }

        .table {
            font-size: 14px;
        }

        .btn-custom {
            margin-top: 15px;
        }
    </style>
</head>
<body>

    <div class="overlay"></div>
    
    <div class="passbook-card">
        <h2>Transaction History</h2>
		
        <div class="table-container">
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>TRAN_ID</th>
                        <th>USER_ACC</th>
                        <th>REC_ACC</th>
                        <th>TRAN_DATE</th>
                        <th>TRAN_TYPE</th>
                        <th>AMOUNT</th>
                        <th>BALANCE</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Fetch transactions dynamically from the session attribute --%>
				   <%Customer c=(Customer)session.getAttribute("customer");%>
                   <%TransactionDAOInterface tdao=new TransactionDAOImpl();
  						ArrayList<Transaction>tr=(ArrayList<Transaction>)tdao.getTransaction(c.getAccno());
  							Iterator<Transaction> it=tr.iterator();%>
  							<% while(it.hasNext()){
  								Transaction t1=it.next();
  								if(t1!=null){
  								%>
                    <tr>
                        <td><%= t1.getTransactionid() %></td>
                        <td><%= t1.getUser() %></td>
                        <td><%= t1.getRec_acc() %></td>
                        <td><%= t1.getDate() %></td>
                        <td><%= t1.getTransactionType() %></td>
                        <td><%= t1.getAmount() %></td>
                        <td><%= t1.getbalance()%></td>
                    </tr>
                  <%}else{ %>
                  
                    <tr>
                        <td colspan="7" class="text-center">No transactions found</td>
                    </tr>
					<%}} %>
                </tbody>
            </table>
        </div>

        <a href="Dashboard.jsp" class="btn btn-primary btn-custom">Back</a>
    </div>

</body>
</html>
