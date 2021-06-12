<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usunąć zamówienie</title>
</head><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form:form modelAttribute="toDel" method="post">
    <form:hidden path="id"/>
    <form type="submit" value="Usuń zamówienie"/>
</form:form>
</body>
</html>
