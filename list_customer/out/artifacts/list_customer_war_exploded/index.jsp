<%@ page import="customer_list.CustomerList" %><%--
  Created by IntelliJ IDEA.
  User: du
  Date: 12/11/2019
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
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
    <th>
      <c:forTokens items = "Ten, Tuoi" delims = "," var = "colums">
        <c:out value ="${colums}"></c:out>
      </c:forTokens>
    </th>
    <td>
    <c:forTokens items = "Ktung,Ntung,Qdu" delims = "," var = "name">
      <c:out value = "${name}"></c:out>
      <p></p>
    </c:forTokens>
  </td>
  <td>
    <c:forTokens items = "26,28,27" delims = "," var = "age">
      <c:out value = "${age}"></c:out>
      <p></p>
    </c:forTokens>
  </td>
  </tr>
</table>
</body>
</html>