<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="font-size: 16px;">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Services, Need Help Right Away?">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>House Repair Services 1</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='././style/nicepage.css'/>" >
    <link rel="stylesheet" href="<c:url value='././style/House-Repair-Services-1.css'/>">
    <script class="u-script" type="text/javascript" src="<c:url value='jquery-1.9.1.min.js'/>" defer=""></script>
    <script class="u-script" type="text/javascript" src="<c:url value='nicepage.js'/>" defer=""></script>
    <meta name="generator" content="Nicepage 3.15.4, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Archivo+Black:400">










    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "",
        "url": "index.html",
        "logo": "images/default-logo.png"
    }</script>

    <meta property="og:title" content="House Repair Services 1">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#104e92">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
</head>
<body data-home-page="https://website407512.nicepage.io/House-Repair-Services-1.html?version=d705a0f6-1243-4368-9e88-6ff10843b6a6" data-home-page-title="House Repair Services 1" class="u-body"><header class="u-clearfix u-header u-header" id="sec-e2e7"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
    <a href="#" class="u-image u-logo u-image-1">
        <img src="images/default-logo.png" class="u-logo-image u-logo-image-1">
    </a>
    <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" data-responsive-from="XL">
        <div class="u-custom-menu u-nav-container" wfd-invisible="true">
            <ul class="u-nav u-spacing-30 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-base u-border-no-left u-border-no-right u-border-no-top u-button-style u-nav-link u-text-active-palette-1-base u-text-grey-90 u-text-hover-grey-90" href="Page-1.html" style="padding: 10px 0px;">House Repair Services</a>
            </li></ul>
        </div>
        <div>
            <div>
                <div>
                    <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
                        <li class="u-nav-item">
                            <a class="u-button-style u-nav-link" href="#carousel_4ff3" style="padding: 10px 20px;">O nas</a>
                        </li>
                        <li class="u-nav-item">
                            <a class="u-button-style u-nav-link" href="#carousel_3760" style="padding: 10px 20px;">Galeria</a>
                        </li>
                        <li class="u-nav-item">
                            <a class="u-button-style u-nav-link" href="#carousel_6381" style="padding: 10px 20px;">Cennik</a>
                        </li>
                        <li class="u-nav-item">
                            <a class="u-button-style u-nav-link" href="http://localhost:8080/ClifPage/login/login" style="padding: 10px 20px;">Zaloguj</a>
                        </li>
                        <sec:authorize access="hasRole('USER')">
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link hidden-admin" href="http://localhost:8080/ClifPage/order/orderList" style="padding: 10px 20px;">Zamówienia</a>
                            </li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link hidden-admin" href="http://localhost:8080/ClifPage/order/adminList" style="padding: 10px 20px;">Zamówienia</a>
                            </li>
                        </sec:authorize>
                        <li class="u-nav-item">
                            <a class="u-button-style u-nav-link" href="#sec-d1d2" style="padding: 10px 20px;">Kontakt</a>
                        </li>
                        <sec:authorize access="isAuthenticated()">
                            <li class="u-nav-item">
                                <a href="<c:url value="/logout" />">Logout</a>
                            </li>
                        </sec:authorize>
                    </ul>
                </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70" wfd-invisible="true"></div>
        </div>
    </nav>
</div></header>
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
    </div>
</section>
<a href="/ClifPage/login/newAccount">Załóż konto</a>
</section>
</body>
</html>