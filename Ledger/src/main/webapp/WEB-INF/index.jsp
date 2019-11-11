<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<title>Ledger</title>
</head>
<body>
<div class="welcome">
<h1>Ledger</h1>
<h3>Welcome back to your Ledger, ${username}.</h3>
<form action="getAccount.do" method="GET">
  <input class="submit" type="submit" value="Account Login" />
</form>
</div>
</body>
</html>