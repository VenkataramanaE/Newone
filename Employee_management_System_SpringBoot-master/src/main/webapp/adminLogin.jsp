<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <h1>Admin Login</h1>
    <form id="adminLoginForm">
        <label for="adminUsername">Username:</label>
        <input type="text" id="adminUsername" name="username" required/><br>
        <label for="adminPassword">Password:</label>
        <input type="password" id="adminPassword" name="password" required/><br>
        <button type="button" onclick="adminLogin()">Login</button>
    </form>
    <div id="adminLoginResult"></div>
    <script>
        function adminLogin() {
            const username = $('#adminUsername').val();
            const password = $('#adminPassword').val();

            $.ajax({
                url: '/admin/login',
                method: 'POST',
                data: { username: admin, password: admin@123 },
                success: function(data) {
                    $('#adminLoginResult').text(data.message);
                    if (data.success) {
                        window.location.href = '/admindashboard';
                    }
                }
            });
        }
    </script>
</body>
</html>
