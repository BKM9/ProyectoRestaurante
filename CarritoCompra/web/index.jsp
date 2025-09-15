<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sabores Autenticos</title>
    <link rel="stylesheet" href="css/main.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        .redirect-container {
            text-align: center;
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .loading-spinner {
            width: 40px;
            height: 40px;
            border: 4px solid #f3f3f3;
            border-top: 4px solid #667eea;
            border-radius: 50%;
            animation: spin 1s linear infinite;
            margin: 0 auto 1rem;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        h1 {
            color: #333;
            margin-bottom: 1rem;
        }
        p {
            color: #666;
            margin-bottom: 1rem;
        }
    </style>
<script type="module" src="https://static.rocket.new/rocket-web.js?_cfg=https%3A%2F%2Frestaurant9704back.builtwithrocket.new&_be=https%3A%2F%2Fapplication.rocket.new&_v=0.1.8"></script>
</head>
    <body>
        <div class="redirect-container">
        <div class="loading-spinner"></div>
        <h1>Bienvenidos a Sabores autenticos</h1>
        <p>Cargando...</p>
    </div>

    <script>
        // Redirect to the restaurant menu page after a short delay
        setTimeout(function() {
            window.location.href = 'pages/restaurant_menu.jsp';
        }, 2000);
    </script>
<script id="dhws-dataInjector" src="/public/dhws-data-injector.js"></script>
<!--        <h1>Hola desde JSP en Tomcat ✅</h1>
        <p>La fecha del servidor es: <%= new Date() %></p>-->
    </body>
</html>
