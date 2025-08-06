<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8" />
  <title>School Management Portal</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #fff;
    }

    .container {
      background: rgba(255 255 255 / 0.1);
      backdrop-filter: blur(14px);
      padding: 50px 70px;
      border-radius: 24px;
      box-shadow: 0 12px 40px rgb(0 0 0 / 0.25);
      max-width: 550px;
      width: 90%;
      text-align: center;
      user-select: none;
      animation: fadeScaleIn 0.9s ease forwards;
    }

    @keyframes fadeScaleIn {
      0% {
        opacity: 0;
        transform: scale(0.85);
      }
      100% {
        opacity: 1;
        transform: scale(1);
      }
    }

    h1 {
      font-weight: 700;
      font-size: 2.6rem;
      margin-bottom: 40px;
      text-shadow: 0 2px 6px rgba(0,0,0,0.3);
      line-height: 1.2;
      user-select: text;
    }
    .title-line {
      display: block;
    }

    form {
      margin: 20px 0;
    }

    .btn {
      position: relative;
      overflow: hidden;
      background: linear-gradient(90deg, #00d2ff, #3a47d5);
      border: none;
      border-radius: 50px;
      padding: 16px 28px;
      width: 100%;
      font-size: 1.1rem;
      font-weight: 600;
      color: white;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 14px;
      box-shadow: 0 6px 14px rgb(0 0 0 / 0.2);
      transition: transform 0.25s ease, box-shadow 0.25s ease;
      user-select: none;
    }

    .btn i {
      font-size: 20px;
      line-height: 1;
    }

    .btn:after {
      content: '';
      position: absolute;
      border-radius: 50%;
      width: 100px;
      height: 100px;
      top: 50%;
      left: 50%;
      pointer-events: none;
      background: rgba(255 255 255 / 0.3);
      transform: translate(-50%, -50%) scale(0);
      opacity: 0;
      transition: transform 0.5s ease, opacity 1s ease;
    }

    .btn:active:after {
      transform: translate(-50%, -50%) scale(2.5);
      opacity: 1;
      transition: 0s;
    }

    .btn:hover {
      box-shadow: 0 12px 24px rgba(0, 123, 255, 0.45);
      transform: translateY(-3px);
    }

    .btn:focus-visible {
      outline: 3px solid #80bdff;
      outline-offset: 4px;
      box-shadow: 0 0 8px #80bdff;
    }

    @media (max-width: 600px) {
      .container {
        padding: 40px 30px;
      }
      h1 {
        font-size: 2rem;
        margin-bottom: 32px;
      }
      .btn {
        padding: 14px 24px;
        font-size: 1rem;
      }
    }
  </style>
</head>
<body>
  <main class="container" role="main" aria-label="School Management Portal">
    <h1>
      <span class="title-line">🎓 Welcome To    </span>
      <span class="title-line">School Management </span>
    </h1>

    <form action="register.jsp">
      <button class="btn" type="submit" aria-label="Register Student">
        <i class="fas fa-user-plus" aria-hidden="true"></i> Register Student
      </button>
    </form>

    <form action="display">
      <button class="btn" type="submit" aria-label="Display Students">
        <i class="fas fa-users" aria-hidden="true"></i> Display Students
      </button>
    </form>
  </main>
</body>
</html>
