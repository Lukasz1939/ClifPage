<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Dodaj do zamówienia</title>
</head>
<body>
<form:form modelAttribute="orderItem">
    <label for="width">Podaj szerokość:
        <form:input name="width" path="width"/>
    </label>
    <label for="length">Podaj długość:
        <form:input name="length" path="length"/>
    </label>
    <label for="quantity">Podaj ilość:
    <form:input name="quantity" path="quantity"/>
    </label>
        <form:radiobutton label="Grubość 2 cm" path="thickness" value="2"/>
        <form:radiobutton label="Grubość 3 cm" path="thickness" value="3"/>
    <label for="material">Podaj materiał:
<%--        <c:forEach items="${materials}" var="material">--%>
<%--            <li>${material.getName()}</li>--%>
<%--        </c:forEach>--%>
        <form:select path="material" items="${materials}" itemValue="id" itemLabel="name"/>
    </label>
    <form:hidden path="id"/>
    <input type="submit"/>
</form:form>
</body>
</html>
