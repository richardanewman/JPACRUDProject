<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/styles.css" rel="stylesheet"
	type="text/css">
<title>All Transactions</title>
</head>
<body>
<div class="displayResults">
<c:if test="${! empty displayAll}">
<h1>Ledger Transactions:</h1>
<c:forEach items="${displayAll}" var="ledgerTx">
${ledgerTx}<br><br>

</c:forEach>
</c:if>

<c:if test="${! empty searchResults}">
<c:forEach items="${searchResults}" var="ledgerTx">
${ledgerTx}<br><br>

</c:forEach>
</c:if>
</div>
</body>
</html>
