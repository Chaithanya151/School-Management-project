<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Student Details</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background: linear-gradient(135deg, #00c9ff, #92fe9d);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #333;
      padding: 20px;
    }

    .form-box {
      background: rgba(255, 255, 255, 0.95);
      border-radius: 16px;
      padding: 40px 50px;
      width: 100%;
      max-width: 450px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
      animation: zoomIn 0.8s ease forwards;
    }

    @keyframes zoomIn {
      from {
        opacity: 0;
        transform: scale(0.9);
      }
      to {
        opacity: 1;
        transform: scale(1);
      }
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
      font-size: 1.8rem;
      color: #222;
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: 600;
      color: #444;
    }

    input[type="text"] {
      width: 100%;
      padding: 12px 14px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 1rem;
      background: #f9f9f9;
      transition: border-color 0.3s;
    }

    input[type="text"]:focus {
      border-color: #00b4db;
      outline: none;
      background: #fff;
    }

    input[type="submit"] {
      width: 100%;
      padding: 14px;
      border: none;
      border-radius: 50px;
      background: linear-gradient(90deg, #43cea2, #185a9d);
      color: #fff;
      font-size: 1.1rem;
      font-weight: 600;
      cursor: pointer;
      transition: background 0.3s, transform 0.2s;
    }

    input[type="submit"]:hover {
      background: linear-gradient(90deg, #185a9d, #43cea2);
      transform: translateY(-2px);
    }

    @media (max-width: 500px) {
      .form-box {
        padding: 30px 25px;
      }

      h2 {
        font-size: 1.5rem;
      }
    }
  </style>
</head>
<body>

  <div class="form-box">
    <h2>Update Student Details</h2>
    <form action="update" >
      <label for="id">ID:</label>
      <input type="text" id="id" name="id" required>

      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>

      <label for="age">Age:</label>
      <input type="text" id="age" name="age" pattern="\d+" title="Enter a valid age" required>

      <input type="submit" value="UPDATE">
    </form>
  </div>

</body>
</html>
