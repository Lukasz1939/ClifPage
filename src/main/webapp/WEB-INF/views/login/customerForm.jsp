<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lutas
  Date: 06.06.2021
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dane firmy</title>
</head>
<body>
    <form:form modelAttribute="customer" method="post">
        <form:hidden path="id"/>
        <label for="login">Login:
            <form:input name="login" path="login"/>
        </label>
        <label for="password">Hasło:
            <form:password name="password" path="password"/>
        </label>
        <label for="email">Email:
            <form:input name="email" path="email"/>
        </label>
        <label for="companyName">Nazwa firmy(Opcjonalnie):
            <form:input name="companyName" path="companyName"/>
        </label>
        <label for="city">Miasto:
            <form:input name="city" path="city"/>
        </label>
        <label for="postCode">Kod pocztowy:
            <form:input name="postCode" path="postCode"/>
        </label>
        <label for="street">Ulica:
            <form:input name="street" path="street"/>
        </label>
        <label for="streetNumber">Numer budynku:
            <form:input name="streetNumber" path="streetNumber"/>
        </label>
        <label for="NIP">NIP(Opcjonalnie):
            <form:input name="NIP" path="NIP"/>
        </label>
        <input type="submit" value="Potwierdź dane">
    </form:form>
</body>
</html>
