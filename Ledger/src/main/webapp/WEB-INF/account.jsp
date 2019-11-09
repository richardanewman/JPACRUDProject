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
<c:forEach items="${ledger}" var="element">
${element.firstName} ${element.lastName}

<h2>Hello, ${element.username}! Here is your account snapshot.</h2>






</c:forEach>
</body>
</html>