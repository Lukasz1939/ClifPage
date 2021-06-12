<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html >
<head>
    <title>Zaloguj</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='../style/myStyle.css'/>" >
    <link rel="stylesheet" type="text/css" href="<c:url value='../style/nicepage.css'/>" >
    <link rel="stylesheet" type="text/css" href="<c:url value='../style/House-Repair-Services-1.css'/>" >

</head>
<body>

<header class="topHead">
    <a href="/ClifPage/" class="u-image u-logo u-image-1">
        <img src="../images/default-logo.png" class="u-logo-image u-logo-image-1">
    </a>
</header>
<form method="post">
    <input class="fa fa-id-badge" type="submit" value="Wyloguj">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</body>
</html>
