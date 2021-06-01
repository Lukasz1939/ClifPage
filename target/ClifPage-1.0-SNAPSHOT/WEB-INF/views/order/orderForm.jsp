<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: bubu
  Date: 30.05.2021
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add item</title>
</head>
<body>
<form:form modelAttribute="orderItem">
    <label for="width">Podaj szerokość:
    <form:input name="width" path="width"/>
    </label>
    <label for="length">Podaj długość:
        <form:input name="length" path="length"/>
    </label>
    <label for="material">Podaj długość:
        <form:select items="${}" name="material" path="material"/>
    </label>
</form:form>
</body>
</html>
