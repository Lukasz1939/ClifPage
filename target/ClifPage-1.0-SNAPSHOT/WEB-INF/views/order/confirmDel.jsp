<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lutas
  Date: 06.06.2021
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usunąć zamówienie</title>
</head>
<body>
<form:form modelAttribute="order" method="post">
    <form:hidden path="id"/>
    <form type="submit" value="Usuń zamówienie"/>
</form:form>
</body>
</html>
