<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>TX</title>
</head>
<body>
<div class="form-group addForm">
<form:form action="updateTx.do" method="POST" modelAttribute="txData">
<form:label path="id" default="${txData.id}" ><h1><strong>Editing Ledger by Transaction ID: ${txData.id} </strong></h1> </form:label><br>
		<form:label path="txDate">Date: </form:label><br>
		<form:input class="form-control" path="txDate" default="${txData.txDate}" placeholder="${txData.txDate}"/>
		<form:errors path="txDate" />
		<br />
		<form:label path="description">Description:</form:label><br>
		<form:textarea class="form-control" path="description" default="${txData.description}" placeholder="${txData.description}"/>
		<form:errors path="description" />
		<br />
		<form:label path="amount">Amount:</form:label><br>
		<form:input class="form-control" path="amount" type="double" default="${txData.amount}" placeholder="${txData.amount}"/>
		<form:errors path="amount" />
		<br />
	    <input class="btn btn-dark btn-lg btn-block" type="submit" value="Submit" />
	</form:form>
	</div>
</body>
</html>