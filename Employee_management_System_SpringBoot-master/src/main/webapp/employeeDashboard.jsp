<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <h1>Employee Dashboard</h1>
    <button id="viewProfile">View Profile</button>
    <button id="logout">Logout</button>
    <div id="employeeProfile"></div>
    <script>
        $(document).ready(function() {
            $('#viewProfile').on('click', function() {
                $.ajax({
                    url: '/viewall',
                    method: 'GET',
                    success: function(data) {
                        $('#employeeProfile').html(`
                            <p>Name: ${data.name}</p>
                            <p>Date of Birth: ${data.dob}</p>
                            <p>Salary: ${data.salary}</p>
                        `);
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
