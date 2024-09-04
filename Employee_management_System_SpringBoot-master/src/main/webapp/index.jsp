<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>

<!-- Syncfusion CSS and JS -->
<link href="https://cdn.syncfusion.com/ej2/20.2.36/material.css" rel="stylesheet" />
<script src="https://cdn.syncfusion.com/ej2/20.2.36/dist/ej2.min.js"></script>

<style>
    #backgroundimage {
        background-image: url("bg.png");
        width: 100vw;
        height: 100vh;
        background-size: cover; /* Adjust background size to cover */
        background-repeat: no-repeat;
        position: relative;
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        padding: 2rem;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        max-width: 600px; /* Limit width for better readability */
    }

    .header {
        margin-bottom: 2rem;
    }
</style>

<div id="backgroundimage">
    <div class="container">
        <h3 class="header">Employee Management System</h3>
        <!-- Syncfusion Button for Actions -->
        <div id="syncfusionActions">
            <button id="addEmployeeBtn" class="e-btn e-primary">Register Employee</button>
            <button id="viewEmployeesBtn" class="e-btn e-secondary">View Employees</button>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Initialize Syncfusion Buttons
        new ej.buttons.Button({ content: 'Add Employee' }, '#addEmployeeBtn');
        new ej.buttons.Button({ content: 'View Employees' }, '#viewEmployeesBtn');

        // Event listeners for buttons (example)
        document.getElementById('addEmployeeBtn').addEventListener('click', function () {
            window.location.href = 'AddEmployee.jsp'; // Redirect to Add Employee page
        });

        document.getElementById('viewEmployeesBtn').addEventListener('click', function () {
            window.location.href = 'findallemp'; // Redirect to View Employees page
        });
    });
</script>

<jsp:include page="footer.jsp"/>
