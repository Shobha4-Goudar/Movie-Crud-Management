<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Movie</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to bottom right, #ffe259, #ffa751);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        width: 350px;
        background: rgba(255, 255, 255, 0.25);
        padding: 35px 40px;
        border-radius: 20px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(6px);
        text-align: center;
    }

    h1 {
        color: #6b2c20;
        margin-bottom: 20px;
    }

    input[type="text"] {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: none;
        outline: none;
        border-radius: 10px;
        background: rgba(255, 255, 255, 0.85);
        font-size: 15px;
    }

    .btn {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 30px;
        font-size: 18px;
        margin-top: 15px;
        cursor: pointer;
        color: white;
        background: linear-gradient(to right, #ff512f, #dd2476);
        transition: 0.3s;
    }

    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0px 6px 18px rgba(255, 0, 100, 0.5);
    }
</style>

</head>
<body>

<div class="container">
    <h1>Edit Movie</h1>

    <form action="update" method="post">
    
        <input type="hidden" name="id" value="${movie.id}">

        <input type="text" name="name" value="${movie.name}" placeholder="Movie Name">
        <input type="text" name="genre" value="${movie.genre}" placeholder="Genre">
        <input type="text" name="rating" value="${movie.rating}" placeholder="Rating">
        <input type="text" name="imagelink" value="${movie.imagelink}" placeholder="Image Link">

        <button class="btn">Update</button>
    </form>
</div>

</body>
</html>
