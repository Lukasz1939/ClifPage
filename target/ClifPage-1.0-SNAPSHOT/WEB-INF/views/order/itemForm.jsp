<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page session="false" %>
<html >
<head>
    <title>Dodaj produkt</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='../../style/myStyle.css'/>" >
    <link rel="stylesheet" type="text/css" href="<c:url value='../../style/nicepage.css'/>" >
    <link rel="stylesheet" type="text/css" href="<c:url value='../../style/House-Repair-Services-1.css'/>" >

</head>
<body>

<header class="topHead">
    <a href="/ClifPage/" class="u-image u-logo u-image-1">
        <img src="../../images/default-logo.png" class="u-logo-image u-logo-image-1">
    </a>
</header>
<form:form modelAttribute="orderItem" action="/ClifPage/order/editOrder" method="post">
    <label for="length">Podaj długość w metrach:
        <form:input name="length" path="length" id="length"/>
    </label>
    <label for="width">Podaj szerokość w metrach:
        <form:input name="width" path="width" id="width"/>
    </label>
    <label for="quantity">Podaj ilość:
    <form:input name="quantity" path="quantity" />
    </label>
    <label for="material">Podaj materiał:
<%--        <c:forEach items="${materials}" var="material">--%>
<%--            <li>${material.getName()}</li>--%>
<%--        </c:forEach>--%>
        <form:select path="material" items="${materials}" itemValue="id" itemLabel="name"/>
    </label>
    <form:hidden path="order.id" />
    <form:hidden path="id"/>
    <input type="submit"/>
</form:form>
</body>
</html>
