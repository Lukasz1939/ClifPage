<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html >
<head>
  <meta charset="utf-8">
  <title>Lista zamówień</title>
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
<section class="main">
  <table>
  <thead>
  <tr>
    <th>Nazwa zamówienia</th>
    <th>Rozmiar w m2</th>
    <th>Do zapłaty:</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${orders}" var="order">
    <tr>
      <td><c:out value="${order.getName()}"/></td>
      <sec:authorize access="hasRole('USER')">
        ${order.accepted==true?"<td>W realizacji</td>":'<td><a methods="get" href="/ClifPage/order/editOrder/${order.getId()}">Dodaj produkty</a></td>'}
<%--      <td ${order.accepted==true? 'class="hide-item"':null}><a methods="get" href="/ClifPage/order/editOrder/${order.getId()}">Dodaj produkty</a></td>--%>
      </sec:authorize>
      <sec:authorize access="hasRole('USER')">
        <td><a methods="post" ${order.accepted==true? 'class="hide-item"':null} href="/ClifPage/order/userDelete/${order.getId()}">Usuń zamówienie</a></td>
      </sec:authorize>
      <sec:authorize access="hasRole('ADMIN')">
        <td><a methods="post" href="/ClifPage/order/delete/${order.getId()}">Usuń zamówienie</a></td>
        <td  ${order.accepted==true? 'class="hide-item"':null}><a methods="post" href="/ClifPage/order/accept/${order.getId()}">Przyjmij do realizacji</a></td>
      </sec:authorize>
      <sec:authorize access="hasRole('ADMIN')">
        <td><c:out value="${order.customer.companyName.length()>0?order.customer.companyName:order.customer.login}"/></td>
      </sec:authorize>
    </tr>
    <c:forEach items="${order.getItems()}" var="item">
      <tr>
        <td><c:out value="${item.getMaterial().getName()}"/></td>
        <td><c:out value="${Math.round(item.getSize() * 100) / 100}"/>m2</td>
        <td><c:out value="${item.getPriceWithVAT()}"/>zł</td>
<%--        <sec:authorize access="hasRole('USER')">--%>
<%--          <td><a methods="post" href="/ClifPage/order/delete/item/${item.id}">Usuń</a></td>--%>
<%--        </sec:authorize>--%>
      </tr>
    </c:forEach>
    </c:forEach>
  </tbody>
</table>
<a href="/ClifPage/order/addOrder">Dodaj nowe zamówienie</a>
<a href="/ClifPage">Powrót</a>
</section>
</body>
</html>
