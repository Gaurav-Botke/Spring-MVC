<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Season Result</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #ffffff, #f1f3f6);
        margin: 0;
        padding: 0;
        text-align: center;
    }
    header {
        background: #28a745;
        color: white;
        padding: 20px;
        box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }
    h1 {
        margin: 0;
        font-size: 2rem;
    }
    .result-box {
        margin-top: 60px;
        display: inline-block;
        padding: 20px 40px;
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .result-box h3 {
        color: #dc3545;
        margin-bottom: 20px;
    }
    a {
        text-decoration: none;
        color: white;
        background: #007bff;
        padding: 10px 20px;
        border-radius: 6px;
        transition: background 0.3s ease;
    }
    a:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
    <header>
        <h1>Result Page</h1>
    </header>
    <div class="result-box">
        <h3>Season Name :: ${resultMsg}</h3>
        <a href="./">Home</a>
    </div>
</body>
</html>
