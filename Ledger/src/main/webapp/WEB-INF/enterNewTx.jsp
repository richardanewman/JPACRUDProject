<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<title>Enter New Transaction</title>
</head>
<body>
<div class="newTxForm">
<h1>Add A New Transaction</h1>
<form:form action="addNewTx.do" method="POST" modelAttribute="newTxData">
		<form:label path="txDate">Date:</form:label><br>
		<form:input class="input" path="txDate" required="required" placeholder="Enter Date YYYY-MM-DD"/>
		<form:errors path="txDate" />
		<br />
		<form:label path="description" >Description:</form:label><br>
		<form:input class="input" path="description" required="required" placeholder="Enter Description"/>
		<form:errors path="description" />
		<br />

		<form:label path="amount">Amount Spent:</form:label><br>
		<form:input class="input" path="amount" type="double" required="required" placeholder="Cost" />
		<form:errors path="amount" />
		<br />
	    <input class="submit" type="submit" value="Submit" />
	</form:form>
	</div>
</body>
</html>