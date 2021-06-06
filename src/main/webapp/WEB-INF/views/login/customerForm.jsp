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
    <title>Stwórz konto</title>
</head>
<body>
    <form:form modelAttribute="customer" method="post">
        <form:hidden path="id"/>
        <label for="companyName">Nazwa firmy:
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
        <label for="NIP">NIP:
            <form:input name="NIP" path="NIP"/>
        </label>
        <label for="login">Login:
            <form:input name="login" path="login"/>
        </label>
        <label for="password">Hasło:
            <form:password name="password" path="password"/>
        </label>
        <input type="submit" value="Załóż konto">
    </form:form>
</body>
</html>
