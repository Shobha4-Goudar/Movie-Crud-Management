<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Management</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to bottom right, #ffdd00, #ffb3c6);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        text-align: center;
        background: rgba(255, 255, 255, 0.3);
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(5px);
    }

    h1 {
        color: #6b2c20;
        margin-bottom: 30px;
        font-size: 32px;
    }

    .btn {
        padding: 12px 25px;
        margin: 10px;
        border: none;
        border-radius: 30px;
        font-size: 16px;
        cursor: pointer;
        color: white;
        background: linear-gradient(to right, #ff7b00, #ff0066);
        transition: 0.3s;
    }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0px 8px 20px rgba(255, 0, 100, 0.4);
    }
</style>

</head>
<body>

<div class="container">
    <h1>Movie Management</h1>

    <a href="add">
        <button class="btn">Add Movie</button>
    </a>
    <br>
    <a href="view">
        <button class="btn">Manage Movies</button>
    </a>
</div>

<%
if(request.getAttribute("message") != null){ %>
<script>
    alert("${message}");
</script>
<% } %>

</body>
</html>
