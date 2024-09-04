<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Syncfusion CSS and JS -->
<link href="https://cdn.syncfusion.com/ej2/20.2.36/material.css" rel="stylesheet" />
<script src="https://cdn.syncfusion.com/ej2/20.2.36/dist/ej2.min.js"></script>

<style>
    .footer {
        background-color: #2196F3;
        color: white;
        padding: 10px 20px;
        text-align: center;
        width: 100%;
        position: relative;
    }

    .footer-content {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        gap: 10px;
    }

    .social-icons {
        display: flex;
        justify-content: center;
        gap: 10px;
    }

    .social-icons a {
        color: white;
        font-size: 20px;
    }

    .contact-form {
        max-width: 300px;
        margin: auto;
    }

    .contact-form input,
    .contact-form textarea {
        width: 100%;
        margin-bottom: 5px;
    }

    .contact-form button {
        width: 100%;
    }
</style>

<div class="footer">
    <div class="footer-content">
        <!-- Contact Information -->
        <div class="footer-info">
            <p>Email: help@recuitly.com</p>
            <p>Phone: +123 456 7890</p>
        </div>

        <!-- Social Media Links -->
        <div class="social-icons">
            <a href="https://www.facebook.com" target="_blank" class="e-icons e-facebook"></a>
            <a href="https://twitter.com" target="_blank" class="e-icons e-twitter"></a>
            <a href="https://www.linkedin.com" target="_blank" class="e-icons e-linkedin"></a>
            <a href="https://www.instagram.com" target="_blank" class="e-icons e-instagram"></a>
        </div>

        <!-- Contact Form -->
        <div class="contact-form">
            <form id="feedbackForm">
                <input type="text" id="name" name="name" placeholder="Your Name" required>
                <input type="email" id="email" name="email" placeholder="Your Email" required>
                <textarea id="message" name="message" placeholder="Your Message" rows="2" required></textarea>
                <button type="submit" class="e-btn">Send Feedback</button>
            </form>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Initialize Syncfusion components
        new ej.buttons.Button({ isPrimary: true }, '.e-btn');

        // Handle form submission
        document.getElementById('feedbackForm').addEventListener('submit', function (e) {
            e.preventDefault();
            // Handle form submission logic here
            alert('Feedback sent! Thank you.');
        });
    });
</script>
