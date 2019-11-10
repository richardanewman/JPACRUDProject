<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>
</head>
<body>
${ledger.firstName} ${ledger.lastName}

<h2>Hello, ${ledger.username}! Here is your account snapshot.</h2>


<form action="getNewTxForm.do" method="GET">
  <input type="submit" value="Add Transaction" />
</form>

<form action="updateTxForm.do" method="GET" >
Enter Transaction ID Number to Edit:<br>
<input class="input" type="number"  min="0" required="required" name="id" placeholder="Enter ID"/> 
  <input type="submit" value="Edit Transaction" />
</form>

<form action="displayAll.do" method="GET">
  <input type="submit" value="Display All Transactions" />
</form>


</body>
</html>