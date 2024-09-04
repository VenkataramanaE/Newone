<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<jsp:include page="header.jsp"/>

<!-- Syncfusion CSS and JS -->
<link href="https://cdn.syncfusion.com/ej2/20.2.36/material.css" rel="stylesheet" />
<script src="https://cdn.syncfusion.com/ej2/20.2.36/dist/ej2.min.js"></script>

<style>
    body {
        margin: 0;
        background: #f9f9f9;
    }

    .header {
        background-color: #2196F3;
        color: white;
        padding: 10px 0;
        text-align: center;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: calc(100vh - 60px); /* Adjust height to leave space for header */
        margin: 0;
        text-align: center;
    }

    .error-title {
        font-size: 2rem;
        color: #d32f2f;
        margin-bottom: 1rem;
    }

    .error-message {
        font-size: 1.2rem;
        color: #757575;
    }

    .syncfusion-container {
        margin-top: 2rem;
    }
</style>

<div class="container">
    <div id="errorDialog"></div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Initialize Syncfusion Dialog
        var errorDialog = new ej.popups.Dialog({
            header: '<span class="error-title">Error</span>',
            content: '<p class="error-message">Something went wrong. Please try again later.</p>',
            width: '400px',
            isModal: true,
            visible: true,
            showCloseIcon: true,
            buttons: [
                {
                    click: function() {
                        errorDialog.hide(); 
                    },
                    buttonModel: { content: 'Close', isPrimary: true }
                }
            ],
            close: function () {
                window.location.href = 'index.jsp'; // Replace with your home or desired page
            }
        });
        errorDialog.appendTo('#errorDialog');
    });
</script>

<jsp:include page="footer.jsp"/>
