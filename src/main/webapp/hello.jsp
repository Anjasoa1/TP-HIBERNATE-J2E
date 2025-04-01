<%--
  Created by IntelliJ IDEA.
  User: andreas
  Date: 07/02/2025
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body { background-color: #FFF9DB; }
            p { color: #FFD700; font-weight: bold; }
        </style>
        <title>Hello World</title>
    </head>
    <body class="p-3">
        <p>Hello world <%= request.getAttribute("nom") %></p>
    </body>
</html>

