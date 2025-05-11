<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login - Inventory Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f4f4f9;
        }

        .box {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .checkbox-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
        }

        .checkbox-container label {
            font-size: 14px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 15px;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }

        .footer {
            position: absolute;
            bottom: 10px;
            text-align: center;
            width: 100%;
            font-size: 14px;
            color: #777;
        }

        .footer a {
            text-decoration: none;
            color: #4CAF50;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="box">
            <h2>User Login</h2>
            <form action="/client/loginsuccess" method="POST">
                <input type="text" id="username" name="username" placeholder="Enter Username" required><br>
                <input type="password" id="password" name="password" placeholder="Enter Password" required><br>

                <div class="checkbox-container">
                    <div>
                        <input type="checkbox" id="remember-me" name="remember-me">
                        <label for="remember-me">Remember me</label>
                    </div>
                    <div>
                        <a href="#">Forgot Password?</a>
                    </div>
                </div>

                <button type="submit">Login</button>
            </form>

            <p>Don't have an account? <a href="/client/register">Sign up here</a></p>
        </div>
    </div>

    <div class="footer">
        <p>© 2025 Inventory Management. All rights reserved.</p>
    </div>
</body>

</html>
