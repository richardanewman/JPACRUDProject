<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<title>Hooray!</title>
</head>
<body>

<div class="displayResults">
<c:if test="${! empty newTx}">
<h1>Success!</h1>
${newTx}
</c:if>

<c:if test="${! empty successfulUpdate}">
<h1>Success!</h1>
${successfulUpdate}
</c:if>

<c:if test="${! empty successfulDelete}">
<h1>Success!</h1>
${successfulDelete}
</c:if>

<c:if test="${! empty displayTx}">
<h1>Found it!</h1>
${displayTx}
</c:if>

</div>
</body>
</html>