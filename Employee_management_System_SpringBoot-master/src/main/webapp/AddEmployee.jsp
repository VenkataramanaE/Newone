<jsp:include page="header.jsp"/>

<!-- Syncfusion CSS -->
<link href="https://cdn.syncfusion.com/ej2/20.2.36/material.css" rel="stylesheet" />
<script src="https://cdn.syncfusion.com/ej2/20.2.36/dist/ej2.min.js"></script>

<style>
  #backgroundimage {
    background-image: url("bg.png");
    width: 100vw;
    height: 100vh;
    background-size: cover;
    background-repeat: no-repeat;
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
  } 

  .container {
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 8px;
    padding: 2rem;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  h3.center-align {
    text-align: center;
    color: #0d47a1;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin-bottom: 2rem;
  }

  .input-field label {
    font-weight: bold;
  }

  .submit-btn {
    margin-top: 1rem;
    width: 100%;
  }

</style>

<h3 class="center-align"> Add Employee</h3>

<div id="backgroundimage">
  <div class="container">
    <form class="col s12" action="employee" method="post" onsubmit="return formValidate()">
      <div class="row">
        <div class="input-field col s12">
          <input placeholder="Enter your name" name="empName" type="text" id="empName" class="e-input" />
          <label for="empName">Name</label>
          <span>
            <h4 id="error-msg-name" style="color: red;"></h4>
          </span>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <input placeholder="YYYY/MM/DD" name="dob" type="date" id="dob" class="e-input" />
          <label for="dob">DOB</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <input placeholder="Enter Basic Salary" name="salary" type="number" id="salary" class="e-input" />
          <label for="salary">Salary</label>
        </div>
      </div>

      <button class="e-btn e-primary submit-btn" type="submit">Register</button>
    </form>
  </div>
</div>

<jsp:include page="footer.jsp"/>
