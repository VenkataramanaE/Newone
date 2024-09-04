<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <h1>Admin Dashboard</h1>
    <button id="manageEmployees">Manage Employees</button>
    <button id="logout">Logout</button>
    <div id="employeeManagement"></div>
    <script>
        $(document).ready(function() {
            $('#manageEmployees').on('click', function() {
                $.ajax({
                    url: '/admin/viewall',
                    method: 'GET',
                    success: function(data) {
                        let employeeList = '<ul>';
                        data.forEach(emp => {
                            employeeList += `<li>${emp.name} - <a href="/admin/editEmployee?empId=${emp.id}">Edit</a></li>`;
                        });
                        employeeList += '</ul>';
                        $('#employeeManagement').html(employeeList);
                    }
                });
            });

            $('#logout').on('click', function() {
                window.location.href = '/logout';
            });
        });
    </script>
</body>
</html>
