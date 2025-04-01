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
        <title>Annonce</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body { background-color: #FFF9DB; }
            h2, label { color: #FFD700; }
            .btn-primary { background-color: #FFD700; color: black; border: none; }
            .bg-body-secondary { background-color: #FFECB3 !important; }
            .alert-primary { background-color: #FFD700; color: black; }
        </style>
    </head>
    <body>
        <h2 class="text-center mt-3">Formulaire annonce</h2>
        <div class="w-50 mx-auto bg-body-secondary mt-3 p-3 rounded">
            <form action="annonceAdd" method="post">
                <label for="titre" class="form-label">Titre :</label>
                <input type="text" id="titre" name="titre" class="form-control">

                <label for="description" class="form-label mt-3">Description :</label>
                <textarea id="description" name="description" class="form-control"></textarea>

                <label for="adresse" class="form-label mt-3">Adresse :</label>
                <input type="text" id="adresse" name="adresse" class="form-control">

                <label for="mail" class="form-label mt-3">Mail :</label>
                <input type="email" id="mail" name="mail" class="form-control">

                <div class="d-flex justify-content-center mt-3">
                    <button type="submit" class="btn btn-primary">Envoyer</button>
                </div>
            </form>
        </div>

        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
        <div class="alert alert-primary m-3" role="alert">
            <%= message %>
        </div>
        <%
            }
        %>
    </body>
</html>
