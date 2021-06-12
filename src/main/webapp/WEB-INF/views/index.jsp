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
    <link rel="stylesheet" type="text/css" href="<c:url value='style/nicepage.css'/>" >
    <link rel="stylesheet" href="<c:url value='style/House-Repair-Services-1.css'/>">
    <link rel="stylesheet" href="<c:url value='style/myStyle.css'/>">
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
</head>
<body data-home-page="https://website407512.nicepage.io/House-Repair-Services-1.html?version=d705a0f6-1243-4368-9e88-6ff10843b6a6" data-home-page-title="House Repair Services 1" class="u-body"><header class="u-clearfix u-header u-header" id="sec-e2e7"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
    <a href="/ClifPage/" class="u-image u-logo u-image-1">
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
                            <a class="u-button-style u-nav-link" href="#sec-d1d2" style="padding: 10px 20px;">Kontakt</a>
                        </li>
                        <sec:authorize access="isAnonymous()">
                        <li class="u-nav-item">
                            <a class="u-button-style u-nav-link" href="http://localhost:8080/ClifPage/login/login" style="padding: 10px 20px;">Zaloguj</a>
                        </li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('USER')">
                        <li class="u-nav-item">
                            <a class="u-button-style u-nav-link hidden-admin" href="http://localhost:8080/ClifPage/order/orderList" style="padding: 10px 20px;">Zamówienia</a>
                        </li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('USER')">
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link hidden-admin" href="http://localhost:8080/ClifPage/login/editAcc" style="padding: 10px 20px;">Edytuj konto</a>
                            </li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
                            <li class="u-nav-item">
                                <a class="u-button-style u-nav-link hidden-admin" href="http://localhost:8080/ClifPage/order/adminList" style="padding: 10px 20px;">Zamówienia</a>
                            </li>
                        </sec:authorize>

                        <sec:authorize access="isAuthenticated()">
                            <li class="u-nav-item">
                                <a href="<c:url value="/logout" />">Wyloguj</a>
                            </li>
                        </sec:authorize>
                    </ul>
                </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70" wfd-invisible="true"></div>
        </div>
    </nav>
</div></header>
<section class="u-align-center u-clearfix u-image u-section-1 section-back" id="carousel_ceea">
    <img src="style/back.jpg" alt="kamieniołom" class="section-back" style="width: 100%"/>
</section>
<section class="u-align-center u-clearfix u-grey-5 u-section-2" id="carousel_4ff3">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-text u-text-2">Coś o nas</h1>
        <p class="u-text u-text-3">Jesteśmy polską rodzinną firmą zajmującą się wyrobem parapetów, blatów i kominków z kamienia naturalnego z ponad dwudziestoletnim doświadczniem</p>
    </div>
</section>
<section class="u-align-center u-clearfix u-section-5" id="carousel_3670">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-text u-text-1">Nasze usługi</h1>
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
            <div class="u-gutter-0 u-layout">
                <div class="u-layout-row">
                    <div class="u-align-left u-container-style u-layout-cell u-left-cell u-size-20 u-layout-cell-1">
                        <div class="u-container-layout u-valign-top u-container-layout-1">
                            <h4 class="u-text u-text-2">Wycinka i obróbka<br>
                            </h4>
                            <p class="u-text u-text-3">Prócz standardowych prostokątnych parapetów, mamy również możliwość docinania pod wymiar, dzięki czemu urzeczywistnimy twóją wymarzoną wizję wnętrza</p>
                        </div>
                    </div>
                    <div class="u-align-left u-container-style u-layout-cell u-size-20 u-layout-cell-2">
                        <div class="u-container-layout u-valign-top u-container-layout-2">
                            <h4 class="u-text u-text-4">Montaż<br>
                            </h4>
                            <p class="u-text u-text-5">W razie potrzeby nasi specjaliści służą pomocą przy montażu, tak byś nie musiał trudzić się tym samodzielnie</p>
                        </div>
                    </div>
                    <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-20 u-layout-cell-3">
                        <div class="u-container-layout u-valign-top u-container-layout-3">
                            <h4 class="u-text u-text-6">Dostawa<br>
                            </h4>
                            <p class="u-text u-text-7">W rejonie dostarczymy do ciebie zamówiony produkt, tak byś nie musiał martwić się o odpowiednio wyposażony pojazd</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="u-align-center u-clearfix u-section-3" id="carousel_1dd3">
    <div class="u-clearfix u-sheet u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-valign-middle-xs u-sheet-1">
        <div class="u-clearfix u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gutter-30 u-layout-wrap u-layout-wrap-1">
            <div class="u-layout">
                <div class="u-layout-row">
                    <div class="u-size-30 u-size-60-md">
                        <div class="u-layout-col">
                            <div class="u-align-left u-container-style u-image u-layout-cell u-left-cell u-size-40 u-image-1">
                                <div class="u-container-layout"></div>
                            </div>
                            <div class="u-align-left u-container-style u-layout-cell u-left-cell u-size-20 u-layout-cell-2">
                                <div class="u-container-layout u-valign-middle u-container-layout-2">
                                    <p class="u-text u-text-1">Zebrane w ciągu lat doświadczenie, pozwala nam dokładnie realizować wasze wizje własnych czterech ścian </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="u-size-30 u-size-60-md">
                        <div class="u-layout-col">
                            <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-20 u-layout-cell-3">
                                <div class="u-container-layout u-valign-middle u-container-layout-3">
                                    <h2 class="u-text u-text-2">Jak wyglądają nasze realizacje? </h2>
                                </div>
                            </div>
                            <div class="u-align-left u-container-style u-image u-layout-cell u-right-cell u-size-40 u-image-2">
                                <div class="u-container-layout"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="u-align-center u-clearfix u-image u-section-4" id="carousel_3760">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
            <div class="u-layout" style="">
                <div class="u-layout-row" style="">
                    <div class="u-container-style u-image u-layout-cell u-left-cell u-size-27 u-size-xs-60 u-image-1" src="">
                        <div class="u-container-layout u-container-layout-1" src=""></div>
                    </div>
                    <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-33 u-size-xs-60 u-layout-cell-2" src="">
                        <div class="u-container-layout u-container-layout-2">
                            <h2 class="u-text u-text-palette-1-base u-text-1">Galeria zdjęć</h2>
                            <div class="u-border-10 u-border-palette-2-base u-expanded-width u-line u-line-horizontal u-line-1"></div>
                            <p class="u-text u-text-2">Przed zamówieniem obejrzyj nasze poprzednie realizacje</p>
                            <a href="https://nicepage.com/" class="u-border-1 u-border-palette-2-base u-btn u-btn-round u-button-style u-palette-2-base u-radius-3 u-btn-1">Wejdź</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="u-align-center u-clearfix u-palette-1-base u-section-6" id="carousel_6381">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h2 class="price-head"> <b>Cennik materiałów</b></h2>
        <table class="price-table">
            <thead>
            <tr>
                <th>Materiał</th>
                <th>Cena</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${materials}" var="material">
                <tr>
                    <td>${material.name}</td>
                    <td>${material.price}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<section class="u-align-center u-clearfix u-image u-shading u-section-7" src="" data-image-width="256" data-image-height="256" id="sec-d1d2">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-text u-title u-text-1">Kontakt</h1>
        <div class="contact-data">
            <h3>Mail: kasia.clif@wp.pl</h3>
            <h3>Adres: Zawały 10A, 87-123 Zawały</h3>
            <h3>Telefon: 509864533</h3>
        </div>
        <div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia ut repellat eum quaerat itaque, officiis nesciunt asperiores numquam dolores quam suscipit, deserunt, exercitationem nostrum repudiandae iure neque expedita odit! Culpa.</p>
        </div>
        <a href="#" class="u-btn u-button-style u-palette-2-base u-btn-1">Skontaktuj się z nami</a>
    </div>
</section>
<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-fdb7"><div class="u-clearfix u-sheet u-sheet-1">
    <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
</div></footer>
<section class="u-backlink u-clearfix u-grey-80">
    <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
    </a>
    <p class="u-text">
        <span>created with</span>
    </p>
    <a class="u-link" href="https://nicepage.com/" target="_blank">
        <span>Website Builder Software</span>
    </a>.
</section>
</body>
</html>
