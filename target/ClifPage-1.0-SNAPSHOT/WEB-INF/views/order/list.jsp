<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%--
  Created by IntelliJ IDEA.
  User: bubu
  Date: 01.06.2021
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Orders</title>
</head>
<body>
<table>
  <thead>
  <tr>
    <th>Nazwa zamówienia</th>
    <th></th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${orders}" var="order">
    <tr>
      <td><c:out value="${order.getName()}"/></td>
      <td><a methods="get" href="/ClifPage/order/editOrder/${order.getId()}">Dodaj produkty</a></td>
      <sec:authorize access="hasRole('ADMIN')">
        <td><a methods="post" href="/ClifPage/order/delete/${order.getId()}">Usuń</a></td>
      </sec:authorize>
    </tr>
    <c:forEach items="${order.getItems()}" var="item">
      <tr>
        <td><c:out value="${item.getMaterial().getName()}"/></td>
        <td><c:out value="${Math.round(item.getSize() * 100) / 100}"/></td>
        <td><c:out value="${item.getPriceWithVAT()}"/></td>
      </tr>
    </c:forEach>
    </c:forEach>
  </tbody>
</table>
<a href="/ClifPage/order/addOrder">Dodaj nowe zamówienie</a>
<a href="/ClifPage">Powrót</a>

</body>
</html>
