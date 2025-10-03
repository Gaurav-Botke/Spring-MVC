<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #333;
            margin-bottom: 15px;
        }

        p {
            font-size: 16px;
            color: #666;
            margin-bottom: 25px;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            background: #5563DE;
            color: #fff;
            font-size: 15px;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            box-shadow: 0 5px 12px rgba(85, 99, 222, 0.4);
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .btn:hover {
            background: #4050b5;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>Welcome to Home Page</h1>
            <p>Your Spring Boot + JSP application is running successfully!</p>
            <a href="#" class="btn">Explore More</a>
        </div>
    </div>
</body>
</html>
