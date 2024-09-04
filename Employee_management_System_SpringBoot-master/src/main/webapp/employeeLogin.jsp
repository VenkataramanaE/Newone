<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <h1>Employee Login</h1>
    <form id="employeeLoginForm">
        <label for="empUsername">Username:</label>
        <input type="text" id="empUsername" name="username" required/><br>
        <label for="empPassword">Password:</label>
        <input type="password" id="empPassword" name="password" required/><br>
        <button type="button" onclick="employeeLogin()">Login</button>
    </form>
    <div id="employeeLoginResult"></div>
    <div id="employeeDetails" style="display:none;">
        <h2>Employee Details</h2>
        <p id="empId"></p>
        <p id="empName"></p>
        <p id="empDob"></p>
        <p id="empSalary"></p>
    </div>
    <script>
        function employeeLogin() {
            const username = $('#empUsername').val();
            const password = $('#empPassword').val();

            $.ajax({
                url: '/employee/login',
                method: 'POST',
                data: { username: username, password: password },
                success: function(data) {
                    $('#employeeLoginResult').text(data.message);
                    if (data.success) {
                        $('#employeeDetails').show();
                        $('#empId').text('ID: ' + data.employee.empId);
                        $('#empName').text('Name: ' + data.employee.empName);
                        $('#empDob').text('Date of Birth: ' + data.employee.dob);
                        $('#empSalary').text('Salary: ' + data.employee.salary);
                    }
                }
            });
        }
    </script>
</body>
</html>
