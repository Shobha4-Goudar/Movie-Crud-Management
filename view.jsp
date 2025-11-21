<%@page import="java.util.List"%>
<%@page import="moviecrud.entity.Movie"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movies</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to bottom right, #ffd200, #ff8a5c);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .container {
        width: 90%;
        max-width: 1000px;
        background: rgba(255, 255, 255, 0.2);
        padding: 30px;
        border-radius: 20px;
        box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.25);
        backdrop-filter: blur(5px);
        text-align: center;
    }

    h1 {
        color: #5a1f08;
        margin-bottom: 25px;
        font-size: 35px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        border-radius: 15px;
        overflow: hidden;
        background: rgba(0, 0, 0, 0.7);
    }

    th {
        background: rgba(255, 255, 255, 0.15);
        color: yellow;
        padding: 15px;
        font-size: 18px;
    }

    td {
        padding: 15px;
        color: white;
        font-size: 16px;
    }

    tr:hover {
        background: rgba(255, 255, 255, 0.1);
        transition: 0.3s;
    }

    img {
        border-radius: 10px;
        object-fit: cover;
    }

    .btn {
        padding: 8px 15px;
        border: none;
        border-radius: 20px;
        font-weight: bold;
        cursor: pointer;
        margin: 3px;
        background: linear-gradient(to right, #ffffff, #d4d4d4);
        color: black;
        transition: 0.3s;
    }

    .btn:hover {
        transform: scale(1.05);
        box-shadow: 0px 4px 12px rgba(255, 255, 255, 0.4);
    }
</style>

</head>
<body>

<div class="container">
    <h1>Movies</h1>

    <table>
        <tr>
            <th>Name</th>
            <th>Genre</th>
            <th>Image</th>
            <th>Rating</th>
            <th>Actions</th>
        </tr>

        <%
        List<Movie> movies = (List<Movie>) request.getAttribute("movies");
        for(Movie movie : movies){
        %>

        <tr>
            <td><%= movie.getName() %></td>
            <td><%= movie.getGenre() %></td>
            <td>
                <img src="<%= movie.getImagelink() %>" height="90px" width="90px">
            </td>
            <td><%= movie.getRating() %></td>
            <td>
                <a href="delete?id=<%=movie.getId()%>">
                    <button class="btn">Delete</button>
                </a>
                <a href="edit?id=<%=movie.getId()%>">
                    <button class="btn">Edit</button>
                </a>
            </td>
        </tr>

        <% } %>

    </table>
</div>

<% if(request.getAttribute("message") != null) { %>
<script>
    alert("${message}");
</script>
<% } %>

</body>
</html>
