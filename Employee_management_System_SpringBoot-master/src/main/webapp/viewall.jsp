<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>

<!-- jQuery Library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Syncfusion CSS and JS -->
<link href="https://cdn.syncfusion.com/ej2/20.2.36/material.css" rel="stylesheet" />
<script src="https://cdn.syncfusion.com/ej2/20.2.36/dist/ej2.min.js"></script>

<style>
    .container {
        margin: 2rem auto;
        padding: 1rem;
        background-color: #f9f9f9;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        max-width: 1000px; /* Adjust for better layout */
    }
</style>

<h3 class="center-align">All Employees</h3><br><br><br>
<div class="container">
    <div id="employeeGrid"></div>
</div>

<script>
    // Syncfusion Grid configuration
    document.addEventListener('DOMContentLoaded', function() {
        // Fetch employee data from the server
        $.ajax({
            url: '/admin/employees', // Adjust the URL to your endpoint for getting all employees
            method: 'GET',
            success: function(data) {
                // Initialize Syncfusion Grid with the data
                let grid = new ej.grids.Grid({
                    dataSource: data,
                    columns: [
                        { field: 'empId', headerText: 'Employee ID', width: 100, textAlign: 'Right' },
                        { field: 'empName', headerText: 'Employee Name', width: 150 },
                        { field: 'dob', headerText: 'Date of Birth', width: 150 },
                        { field: 'salary', headerText: 'Basic Salary', width: 150 },
                        {
                            headerText: 'Actions', width: 200, textAlign: 'Center', template: `
                                <button class="e-btn e-primary delete-btn" data-id="${empId}">Delete</button>
                                <button class="e-btn e-secondary update-btn" data-id="${empId}">Update</button>
                            `
                        }
                    ],
                    height: 400
                });
                grid.appendTo('#employeeGrid');
                
                // Handle Delete button click
                $('#employeeGrid').on('click', '.delete-btn', function() {
                    const empId = $(this).data('id');
                    if (confirm('Are you sure you want to delete this employee?')) {
                        $.ajax({
                            url: `/admin/deleteEmployee?empId=${empId}`,
                            method: 'DELETE',
                            success: function(response) {
                                if (response.success) {
                                    alert('Employee deleted successfully');
                                    grid.refresh(); // Refresh the grid data
                                } else {
                                    alert('Failed to delete employee');
                                }
                            }
                        });
                    }
                });
                
                // Handle Update button click
                $('#employeeGrid').on('click', '.update-btn', function() {
                    const empId = $(this).data('id');
                    window.location.href = `/admin/updateEmployee?empId=${empId}`;
                });
            }
        });
    });
</script>

<jsp:include page="footer.jsp"/>
