<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 12/11/2019
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="module.CustomerList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Customer List</title>
</head>
<body>
<h2>Danh sach khach hang</h2>
<table>
  <tr>
    <td>
    <c:forTokens items = "Name,Ktung,Ntung,Qdu" delims = "," var = "name">
      <c:out value = "${name}"></c:out>
      <p></p>
    </c:forTokens>
  </td>
  <td>
    <c:forTokens items = "Age,26,28,27" delims = "," var = "age">
      <c:out value = "${age}"></c:out>
      <p></p>
    </c:forTokens>
  </td>
  </tr>
</table>
</body>
</html>