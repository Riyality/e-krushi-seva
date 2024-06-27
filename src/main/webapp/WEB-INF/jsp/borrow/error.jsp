<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .error-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }
        .error-message {
            font-size: 1.5rem;
            color: red;
            display: flex;
            align-items: center;
        }
        .error-icon {
            font-size: 2rem;
            margin-right: 10px;
        }
    </style>
    <script>
        // Redirect to another page after 3 seconds
        setTimeout(function() {
            window.location.href = "/borrow"; // Change this to your target page
        }, 3000);
    </script>
</head>
<body>
    <div class="error-container">
        <div class="error-message">
            <span class="error-icon">&#10060;</span> <!-- Cross mark icon -->
            ${msg}
        </div>
    </div>
</body>
</html>
