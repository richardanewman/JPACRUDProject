<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TX</title>
</head>
<body>
<form:form action="updateTx.do" method="POST" modelAttribute="txData">
<form:label path="id" default="${txData.id}" ><strong>Editing Ledger by Transaction ID: ${txData.id} </strong> </form:label>
		<form:label path="txDate">Date: </form:label><br>
		<form:input class="input" path="txDate" default="${txData.txDate}" placeholder="${txData.txDate}"/>
		<form:errors path="txDate" />
		<br />
		<form:label path="description">Description:</form:label><br>
		<form:textarea class="input" path="description" default="${txData.description}" placeholder="${txData.description}"/>
		<form:errors path="description" />
		<br />
		<form:label path="amount">Amount:</form:label><br>
		<form:input class="input" path="amount" type="double" default="${txData.amount}" placeholder="${txData.amount}"/>
		<form:errors path="amount" />
		<br />
	    <input class="submit" type="submit" value="Submit" />
	</form:form>
</body>
</html>