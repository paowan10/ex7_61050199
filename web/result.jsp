<%-- 
    Document   : result
    Created on : Oct 28, 2020, 11:44:39 PM
    Author     : JAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <h1>
            <%
                String result = (String) request.getAttribute("result");
                String number1 = request.getParameter("number1");
                String number2 = request.getParameter("number2");
                String status = request.getParameter("status");
                String symbol = "";
                if (status != null && status.equals("Add")) {
                    symbol = "+";
                } else if (status != null && status.equals("Sub")) {
                    symbol = "-";
                } else if (status != null && status.equals("Mul")) {
                    symbol = "*";
                } else if (status != null && status.equals("Div")) {
                    symbol = "/";
                }
                out.print("The result of " + number1  + symbol + number2 + " is: " + result);
            %>
        </h1>
    </body>
</html>
