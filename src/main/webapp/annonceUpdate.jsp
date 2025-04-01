<%@ page import="bean.Annonce" %><%--
  Created by IntelliJ IDEA.
  User: andreas
  Date: 07/02/2025
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Annonce update</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body { background-color: #FFF9DB; }
            h2, label { color: #FFD700; }
            .btn-primary { background-color: #FFD700; color: black; border: none; }
            .bg-body-secondary { background-color: #FFECB3 !important; }
        </style>
    </head>
    <body>
        <% Annonce annonce = (Annonce) request.getAttribute("annonce"); %>
        <h2 class="text-center mt-3">Formulaire Mise à jour annonce</h2>
        <div class="w-50 mx-auto bg-body-secondary mt-3 p-3 rounded">
            <form action="annonceUpdate" method="post">
                <input type="hidden" name="id" id="id" value="<%= annonce.getId() %>">

                <label for="titre" class="form-label">Titre :</label>
                <input type="text" id="titre" name="titre" class="form-control" value="<%= annonce.getTitle() %>">

                <label for="description" class="form-label mt-3">Description :</label>
                <textarea id="description" name="description" class="form-control"><%= annonce.getDescription() %></textarea>

                <label for="adresse" class="form-label mt-3">Adresse :</label>
                <input type="text" id="adresse" name="adresse" class="form-control" value="<%= annonce.getAdresse() %>">

                <label for="mail" class="form-label mt-3">Mail :</label>
                <input type="email" id="mail" name="mail" class="form-control" value="<%= annonce.getEmail() %>">

                <div class="d-flex justify-content-center mt-3">
                    <button type="submit" class="btn btn-primary">Envoyer</button>
                </div>
            </form>
        </div>
        <p class="text-center mt-3"><%= request.getAttribute("message") %></p>
    </body>
</html>

