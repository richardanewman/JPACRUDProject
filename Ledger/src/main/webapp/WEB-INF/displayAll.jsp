<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Transactions</title>
</head>
<body>
<c:forEach items="${displayAll}" var="ledgerTx">
${ledgerTx}<br><br>

</c:forEach>
</body>
</html>