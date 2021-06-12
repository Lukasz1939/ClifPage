<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html >
<head>
    <title>Błąd</title>
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
<h1>Zamówienie przyjęte do realizacji</h1>
<h3>Zamówienie zostało już przyjęte do realizacji, nie można go już wycofać</h3>
<h3>W razie pytań skontaktuj się z nami.</h3>
<a href="/ClifPage">Powrót do strony głównej</a>
<a href="/ClifPage/login/login">Powrót do strony logowania</a>
</body>
</html>
