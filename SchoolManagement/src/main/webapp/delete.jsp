<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Delete Student Record</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
  <style>
    * {
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
    }

    body {
      height: 100vh;
      background: linear-gradient(to right, #434343, #000000);
      display: flex;
      justify-content: center;
      align-items: center;
      color: #fff;
      padding: 20px;
    }

    .form-box {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(12px);
      border-radius: 16px;
      padding: 40px 50px;
      width: 100%;
      max-width: 400px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.6);
      text-align: center;
      animation: fadeSlide 0.8s ease-in;
    }

    @keyframes fadeSlide {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    h1 {
      font-size: 22px;
      margin-bottom: 30px;
      color: #f8f8f8;
    }

    label {
      font-weight: 600;
      display: block;
      margin-bottom: 10px;
      color: #eee;
    }

    input[type="text"] {
      width: 100%;
      padding: 12px 14px;
      border-radius: 8px;
      border: none;
      margin-bottom: 25px;
      font-size: 1rem;
      background: #eaeaea;
      color: #333;
    }

    input[type="text"]:focus {
      outline: none;
      background: #fff;
      box-shadow: 0 0 5px #ff4b2b;
    }

    input[type="submit"] {
      width: 100%;
      padding: 14px;
      border-radius: 30px;
      border: none;
      background: linear-gradient(to right, #ff416c, #ff4b2b);
      color: white;
      font-size: 1rem;
      font-weight: 600;
      cursor: pointer;
      transition: transform 0.2s, background 0.3s;
    }

    input[type="submit"]:hover {
      background: linear-gradient(to right, #ff4b2b, #ff416c);
      transform: translateY(-2px);
    }

    @media (max-width: 480px) {
      .form-box {
        padding: 30px 25px;
      }

      h1 {
        font-size: 20px;
      }
    }
  </style>
</head>
<body>

  <div class="form-box">
    <h1>Delete Student by ID</h1>
    <form action="delete">
      <label for="id">Enter ID:</label>
      <input type="text" id="id" name="id" required />
      <input type="submit" value="DELETE" />
    </form>
  </div>

</body>
</html>
