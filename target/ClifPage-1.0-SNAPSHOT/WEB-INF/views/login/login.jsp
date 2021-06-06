<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html >
<head>

</head>
<body>

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
                <input type="submit"value="Sign In"/>
            </div>
            <input type="hidden"name="${_csrf.parameterName}"value="${_csrf.token}"/>
        </form>
        <a href="index.html" class="homepage-btn">Powrót do strony głównej</a>
    </div>
</section>
<a href="/ClifPage/login/newAccount">Załóż konto</a>
</section>
</body>
</html>