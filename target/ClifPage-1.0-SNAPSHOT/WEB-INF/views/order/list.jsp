<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <td><a methods="get" href="/ClifPage_war_exploded/order/editOrder/${order.getId()}">Edytuj</a></td>
      <td><a methods="get" href="/ClifPage_war_exploded/order/delete">Usuń</a></td>
<%--      /${order.getId()}--%>
      <c:forEach items="${order.getItems()}" var="item">
        <td><c:out value="${item.getSize()}"/></td>
      </c:forEach>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
