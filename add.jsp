<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Management - Add Movie</title>

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
        padding: 30px 40px;
        border-radius: 20px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
        backdrop-filter: blur(6px);
    }

    h1 {
        color: #6b2c20;
        margin-bottom: 25px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: none;
        outline: none;
        border-radius: 8px;
        background: rgba(255, 255, 255, 0.8);
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
    <h1>Add Movie</h1>

    <form action="add" method="post">
        <input type="text" name="name" placeholder="Movie Name">
        <input type="text" name="genre" placeholder="Genre">
        <input type="text" name="rating" placeholder="Rating">
        <input type="text" name="imagelink" placeholder="Image Link">

        <button class="btn">Add</button>
    </form>
</div>

</body>
</html>
