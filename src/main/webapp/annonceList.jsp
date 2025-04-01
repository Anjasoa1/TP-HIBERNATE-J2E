<%@ page import="java.util.ArrayList" %>
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
        <title>Annonce liste</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body { background-color: #FFF9DB; }
            h2, th { color: #FFD700; }
            .table-hover tbody tr:hover { background-color: #FFECB3; }
            .btn-success { background-color: #FFD700; color: black; border: none; }
        </style>
    </head>
    <body>
        <% ArrayList<Annonce> annonces = (ArrayList<Annonce>) request.getAttribute("annonces"); %>
        <h2 class="text-center m-3">Liste des annonces</h2>
        <table class="table table-hover table-striped table-bordered">
            <thead>
                <tr>
                    <th>Titre</th>
                    <th>Description</th>
                    <th>Adresse</th>
                    <th>Mail</th>
                    <th>Date</th>
                    <th>Mettre à jour</th>
                    <th>Supprimer</th>
                </tr>
            </thead>
            <tbody>
                <% for (Annonce annonce : annonces) { %>
                    <tr>
                        <td><%= annonce.getTitle() %></td>
                        <td><%= annonce.getDescription() %></td>
                        <td><%= annonce.getAdresse() %></td>
                        <td><%= annonce.getEmail() %></td>
                        <td><%= annonce.getDate() %></td>
                        <td>
                            <form action="annonceUpdate" method="get">
                                <input type="hidden" name="id" value="<%= annonce.getId() %>">
                                <button type="submit" class="btn btn-success">Update</button>
                            </form>
                        </td>
                        <td>
                            <form action="annonceDelete" method="post">
                                <input type="hidden" name="id" value="<%= annonce.getId() %>">
                                <button type="submit" class="btn btn-danger">Supprimer</button>
                            </form>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
