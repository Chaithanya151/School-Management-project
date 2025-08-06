<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Student Registration</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
  <style>
    * {
      box-sizing: border-box;
    }
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      color: #fff;
      padding: 20px;
    }
    .form-container {
      background: rgba(255 255 255 / 0.1);
      backdrop-filter: blur(15px);
      border-radius: 20px;
      padding: 40px 50px;
      max-width: 420px;
      width: 100%;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
      animation: slideFadeIn 0.8s ease forwards;
    }
    @keyframes slideFadeIn {
      0% {
        opacity: 0;
        transform: translateY(25px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }
    h2 {
      text-align: center;
      margin-bottom: 35px;
      font-weight: 700;
      font-size: 1.9rem;
      text-shadow: 0 2px 5px rgba(0,0,0,0.3);
    }
    label {
      display: block;
      font-weight: 600;
      margin-bottom: 8px;
      font-size: 1rem;
      user-select: none;
    }
    input[type="text"] {
      width: 100%;
      padding: 12px 14px;
      border-radius: 8px;
      border: none;
      font-size: 1rem;
      outline: none;
      transition: box-shadow 0.3s ease, background-color 0.3s ease;
      background: rgba(255 255 255 / 0.85);
      color: #333;
      margin-bottom: 25px;
      box-shadow: inset 0 2px 5px rgb(0 0 0 / 0.1);
    }
    input[type="text"]:focus {
      box-shadow: 0 0 8px #6a11cb;
      background: white;
    }
    input[type="submit"] {
      width: 100%;
      padding: 16px 0;
      border-radius: 50px;
      border: none;
      background: linear-gradient(90deg, #00d2ff, #3a47d5);
      font-weight: 700;
      font-size: 1.15rem;
      color: white;
      cursor: pointer;
      box-shadow: 0 8px 20px rgb(0 0 0 / 0.25);
      transition: background 0.3s ease, transform 0.2s ease;
      user-select: none;
    }
    input[type="submit"]:hover {
      background: linear-gradient(90deg, #3a47d5, #00d2ff);
      transform: translateY(-3px);
      box-shadow: 0 14px 30px rgb(0 0 0 / 0.4);
    }
    @media (max-width: 480px) {
      .form-container {
        padding: 30px 25px;
      }
      h2 {
        font-size: 1.6rem;
        margin-bottom: 25px;
      }
      input[type="submit"] {
        font-size: 1rem;
        padding: 14px 0;
      }
    }
  </style>
</head>
<body>

  <div class="form-container" role="main" aria-label="Student Registration Form">
    <h2>Fill The Form To Register</h2>
    <form action="save" >
      <label for="id">ID:</label>
      <input type="text" id="id" name="id" required />

      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required />

      <label for="age">Age:</label>
      <input type="text" id="age" name="age" pattern="\d+" title="Please enter a valid age" required />

      <input type="submit" value="Register" />
    </form>
  </div>

</body>
</html>
