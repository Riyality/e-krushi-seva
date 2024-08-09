<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> <!-- Include SweetAlert library -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            Swal.fire({
                position: "center", // Change the position to center
                icon: "success",
                title: "${msg}", // Display the message from the key
                showConfirmButton: false,
                timer: 1500, // Set a longer timer for a slower fade out
                timerProgressBar: true, // Enable progress bar
                didClose: () => {
                    window.location.href = "suppliers/all"; // Redirect to your target page after SweetAlert
                }
            });
        });
    </script>
</head>
<body>
</body>
</html>
