<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
    }

    form {
      background: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.2);
      width: 350px;
      text-align: center;
    }

    h2 {
      margin-bottom: 20px;
      color: #333;
    }

    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
      color: #444;
      text-align: left;
    }

    input[type="text"],
    input[type="number"] {
    
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 2px solid #ccc;
      border-radius: 8px;
      outline: none;
      transition: border-color 0.3s;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
      border-color: #6a11cb;
    }

    input[type="submit"] {
      margin-top: 20px;
      padding: 12px;
      width: 100%;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: transform 0.2s, background 0.3s;
    }
  input[type="reset"] {
      margin-top: 20px;
      padding: 12px;
      width: 100%;
      background: linear-gradient(135deg, #6a11cb, #2575fc);
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: transform 0.2s, background 0.3s;
    }
    input[type="submit"]:hover {
      transform: scale(1.05);
      background: linear-gradient(135deg, #2575fc, #6a11cb);
    }
     input[type="reset"]:hover {
      transform: scale(1.05);
      background: linear-gradient(135deg, #2575fc, #6a11cb);
    }
  </style>
</head>
<body>
  <form action="register" method="post">
    <h2>Register</h2>
    
    <label for="id">ID</label>
    <input type="text" id="id" name="id" required>
    
    <label for="name">Name</label>
    <input type="text" id="name" name="name" required>
    
    <label for="address">Address</label>
    <input type="text" id="address" name="address" required>
    
    <label for="qualification">Qualification</label>
    <input type="text" id="qualification" name="qualification" required>
    
    <label for="fee">Fee</label>
    <input type="number" id="fee" name="fee" required>
    
    <input type="submit" value="Register">
    <input type="reset" value="Cancle">
  </form>
</body>
</html>