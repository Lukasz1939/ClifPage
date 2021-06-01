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
      <td><a href="/order/editOrder/${order.getId()}">Edytuj</a></td>
      <td><a href="/order/editOrder/${order.getId()}">Usuń</a></td>

    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
