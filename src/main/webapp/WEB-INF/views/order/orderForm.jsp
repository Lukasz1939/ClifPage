<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<form:form modelAttribute="order" method="post">
    <label for="name">Podaj nazwę zamówienia:
        <form:input name="name" path="name"/>
    </label>
    <label for="customer">Podaj klienta:
        <form:select name="customer" path="customer" items="${customers}" itemValue="id" itemLabel="companyName"/>
    </label>
    <form:hidden path="id"/>
    <input type="submit"/>
</form:form>
</body>
</html>
