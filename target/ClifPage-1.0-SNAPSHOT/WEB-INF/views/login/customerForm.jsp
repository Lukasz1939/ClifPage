<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <label for="phoneNumber">Numer Telefonu:
            <form:input name="phoneNumber" path="phoneNumber"/>
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
        <label for="isCompany">Czy prowadzisz firmę?
            <form:checkbox path="isCompany" name="isCompany" id="isCompany"/>
        </label>
        <label for="companyName" class="hidden-input hide-item">Nazwa firmy:
        <form:input name="companyName" path="companyName" />
        </label>
        <label for="NIP" class="hidden-input hide-item">NIP:
            <form:input name="NIP" path="NIP"/>
        </label>
        <input type="submit" value="Potwierdź dane">
    </form:form>
<script>
    const companyInput = document.querySelector("input#isCompany")
    const inputsToHide = document.querySelectorAll(".hidden-input")
    companyInput.addEventListener('change',()=>{
        inputsToHide.forEach((input)=>{
            if(companyInput.checked === true){
            input.classList.remove("hide-item");
            }else if(companyInput.checked === false){
                input.classList.add("hide-item");
            }
        })
    })
</script>
</body>
</html>
