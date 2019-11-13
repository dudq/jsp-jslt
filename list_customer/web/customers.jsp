<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 13/11/2019
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
    <style>
        table,tr,td{
            border: 1px solid grey;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <td>Name</td>
        <td>Age</td>
        <td>Image</td>
    </tr>
    <c:forEach items="${customer}" var="customer">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getAge()}</td>
            <td>
                <img src="${customer.getImage()}" height="100" width="100">
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
