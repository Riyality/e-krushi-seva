<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .success-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }
        .success-message {
            font-size: 1.5rem;
            color: green;
            display: flex;
            align-items: center;
        }
        .success-icon {
            font-size: 2rem;
            margin-right: 10px;
        }
    </style>
    <script>
        // Redirect to another page after 3 seconds
        setTimeout(function() {
            window.location.href = "/customers/all"; // Change this to your target page
        }, 1000);
    </script>
</head>
<body>
    <div class="success-container">
        <div class="success-message">
            <span class="success-icon">&#10003;</span> <!-- Check mark icon -->
            ${msg}
        </div>
    </div>
</body>
</html>
