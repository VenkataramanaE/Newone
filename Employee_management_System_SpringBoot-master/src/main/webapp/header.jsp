<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Syncfusion CSS -->
    <link href="https://cdn.syncfusion.com/ej2/20.2.36/material.css" rel="stylesheet" />

    <!-- Syncfusion JS -->
    <script src="https://cdn.syncfusion.com/ej2/20.2.36/dist/ej2.min.js"></script>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <meta charset="ISO-8859-1">
    <title>Employee Recruitly</title>

    <style>
        .e-toolbar {
            background-color: #0d47a1; /* Syncfusion primary color */
            color: white;
            padding: 0 1rem;
        }

        .e-toolbar .e-toolbar-items .e-toolbar-item {
            color: white;
            font-size: 16px;
        }

        .e-toolbar .e-toolbar-items .e-toolbar-item:hover {
            background-color: #1565c0; /* Syncfusion hover color */
        }
    </style>
</head>
<body>
    <div id="toolbar"></div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            new ej.navigations.Toolbar({
                items: [
                    { prefixIcon: 'e-icons e-add', text: 'Employee Register', tooltipText: 'Employee Register', showText: 'Always', click: () => window.location.href = 'AddEmployee.jsp' },
                    { prefixIcon: 'e-icons e-view', text: 'View Employees', tooltipText: 'View Employees', showText: 'Always', click: () => window.location.href = 'findallemp' }
                ],
                width: '100%'
            }, '#toolbar');
        });
    </script>
</body>
</html>
