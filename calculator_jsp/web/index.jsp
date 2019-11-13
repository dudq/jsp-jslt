<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 13/11/2019
  Time: 09:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>models.Calculator</title>
</head>
<body>
<h1>Simple models.Calculator</h1>
<form method="post" action="/calculate">
    <fieldset>
        <legend>
            models.Calculator
        </legend>
        <table>
            <tr>
                <td> First operand:</td>
                <td><input name="first_operand" type="text"></td>
            </tr>
            <tr>
                <td>Operator:</td>
                <td>
                    <select name="operator">
                        <option value="+">Addition</option>
                        <option value="-">Subtraction</option>
                        <option value="*">Multiplication</option>
                        <option value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td> Second operand:</td>
                <td><input name="second_operand" type="text"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Calculate"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
