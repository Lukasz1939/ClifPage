<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<section class="login-sec">
    <div class="form">
        <form method="post" class="form-middle ">
            <div class="form-item">
                <label> Login:
                    <input type="text" name="username"/>
                </label>
            </div>
            <div class="form-item">
                <label> Hasło:
                    <input type="password"name="password"/>
                </label>
            </div>
            <div class="form-item">
                <input type="submit"value="Zaloguj"/>
            </div>
            <input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
        </form>
        <a href="/ClifPage/" class="homepage-btn">Powrót do strony głównej</a>
        <a href="/ClifPage/login/newAccount">Załóż konto</a>
    </div>
</section>
</section>
</body>
</html>