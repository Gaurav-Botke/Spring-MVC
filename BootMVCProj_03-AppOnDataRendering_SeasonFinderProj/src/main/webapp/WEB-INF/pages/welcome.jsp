<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome - Season Finder</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #f8f9fa, #e9ecef);
        margin: 0;
        padding: 0;
        text-align: center;
    }
    header {
        background: #007bff;
        color: white;
        padding: 20px;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }
    h1 {
        margin: 0;
        font-size: 2rem;
    }
    .content {
        margin-top: 60px;
    }
    a {
        text-decoration: none;
        color: white;
        background: #28a745;
        padding: 12px 25px;
        border-radius: 8px;
        font-size: 1.1rem;
        transition: background 0.3s ease;
    }
    a:hover {
        background: #218838;
    }
</style>
</head>
<body>
    <header>
        <h1>Season Finder</h1>
    </header>
    <div class="content">
        <p>Select the option below to find a season:</p>
        <a href="season">Find Season</a>
    </div>
</body>
</html>
