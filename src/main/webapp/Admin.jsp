<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bank.DAO.*" %>
<%@ page import="com.bank.DTO.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminPanel</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f8f9fa;
        }

        .navbar {
            background-color: black;
        }

        .admin-container {
            margin-top: 80px;
        }

        .admin-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .table-container {
            max-height: 400px;
            overflow-y: auto;
        }

        .delete-btn {
            background-color: red;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        .delete-btn:hover {
            background-color: darkred;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <% Customer c = (Customer) session.getAttribute("customer"); %>
            <a class="navbar-brand" href="#">Welcome Admin: <%= c.getName() %></a>
            <a href="Dashboard.jsp" class="btn btn-primary ml-auto">Back</a>
        </div>
    </nav>

    <div class="container admin-container">

        <!-- User Management Section -->
        <div class="admin-card">
        	<% CustomerDAOInterface cdao=new CustomerDAOImpl(); %>
            <h2 class="text-center">Total Users-><%=cdao.totalCustomer() %></h2>

            <% String deletesuccess = (String) request.getAttribute("deletesuccess");
               if (deletesuccess != null) { %>
                <div class="alert alert-success text-center"><%= deletesuccess %></div>
            <% } %>

            <% String deletefailure = (String) request.getAttribute("deletefailure");
               if (deletefailure != null) { %>
                <div class="alert alert-danger text-center"><%= deletefailure %></div>
            <% } %>

            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>ACC NO</th>
                            <th>NAME</th>
                            <th>PHONE</th>
                            <th>EMAIL</th>
                            <th>BALANCE</th>
                            <th>PIN</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% CustomerDAOInterface udao = new CustomerDAOImpl();
                           ArrayList<Customer> users = (ArrayList<Customer>) udao.getCustomer();
                           for (Customer cs : users) {
                               if (cs.getAccno() != 3) { %>
                                <tr>
                                    <td><%= cs.getAccno() %></td>
                                    <td><%= cs.getName() %></td>
                                    <td><%= cs.getPhone() %></td>
                                    <td><%= cs.getMail() %></td>
                                    <td><%= cs.getBalance() %></td>
                                    <td><%= cs.getPin() %></td>
                                    <td>
                                        <form action="deleteuser" method="post">
                                            <input type="hidden" name="delete" value="<%= cs.getAccno() %>">
                                            <button type="submit" class="delete-btn">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                        <% } } %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Transaction History Section -->
        <div class="admin-card">
            <h2 class="text-center">All Transactions</h2>

            <div class="table-responsive">
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
                        <% TransactionDAOInterface tdao = new TransactionDAOImpl();
                           ArrayList<Transaction> transactions = (ArrayList<Transaction>) tdao.getTransaction();
                           for (Transaction t : transactions) { %>
                            <tr>
                                <td><%= t.getTransactionid() %></td>
                                <td><%= t.getUser() %></td>
                                <td><%= t.getRec_acc() %></td>
                                <td><%= t.getDate() %></td>
                                <td><%= t.getTransactionType() %></td>
                                <td><%= t.getAmount() %></td>
                                <td><%= t.getbalance() %></td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>

    </div>

</body>
</html>
