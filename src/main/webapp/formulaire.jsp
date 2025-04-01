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
            label { color: #FFD700; font-weight: bold; }
            button { background-color: #FFD700; color: black; border: none; }
        </style>
        <title>Formulaire nom</title>
    </head>
    <body class="p-3">
        <form action="hello" method="POST" class="mb-3">
            <label for="nom" class="form-label">Entrez votre nom :</label>
            <input id="nom" name="nom" type="text" class="form-control mb-2">
            <button type="submit" class="btn">Envoyer</button>
        </form>
    </body>
</html>

