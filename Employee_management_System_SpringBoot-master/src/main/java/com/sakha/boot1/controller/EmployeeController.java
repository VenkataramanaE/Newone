package com.sakha.boot1.controller;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sakha.boot1.model.Employee;
import com.sakha.boot1.service.EmployeeService;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeService service;
    @PostMapping("/employee/login")
    public Map<String, Object> login(@RequestParam("username") String username,
                                     @RequestParam("password") String password) {
        Map<String, Object> response = new HashMap<>();
        Employee employee = service.getEmployeeByName(username);

        if (employee != null && password.equals(employee.getPassword())) {
            response.put("success", true);
            response.put("message", "Login successful!");
            response.put("employee", employee);
        } else {
            response.put("success", false);
            response.put("message", "Invalid username or password.");
        }

        return response;
    }

    @PostMapping("/employee")
    public String registerEmployee(@ModelAttribute Employee emp, Model m) {
        Employee savedEmp = service.save(emp);
        m.addAttribute("emp", "Operation Successful.......");
        return "view";
    }

    @PostMapping("/employeeByname")
    public String getEmployeeByName(@RequestParam("empName") String empName, Model m) {
        Employee emp = service.getEmployeeByName(empName);
        m.addAttribute("emp", emp);
        return "viewemp";
    }

    @PostMapping("/employeeid")
    public String getEmployee(@RequestParam("empId") int empId, Model m) {
        Employee emp = service.getEmployee(empId);
        m.addAttribute("emp", emp);
        return "viewemp";
    }

    @GetMapping("/findallemp")
    public String getAllEmployee(Model m) {
        List<Employee> list = service.getAllEmployee();
        m.addAttribute("list", list);
        return "viewall";
    }

    @GetMapping("/updater")
    public String update(@RequestParam("empId") int empId, Model m) {
        Employee emp = service.getEmployee(empId);
        m.addAttribute("emp", emp);
        return "updateemp";
    }

    @GetMapping("/api/employees")
    @ResponseBody
    public List<Employee> getAllEmployeesApi() {
        return service.getAllEmployee();
    }

    @GetMapping("/api/employee/{empId}")
    @ResponseBody
    public Employee getEmployeeById(@PathVariable int empId) {
        return service.getEmployee(empId);
    }

    @DeleteMapping("/api/employee/{empId}")
    @ResponseBody
    public Map<String, Object> deleteEmployee(@PathVariable int empId) {
        Map<String, Object> response = new HashMap<>();
        try {
            service.deleteEmployee(empId);
            response.put("success", true);
            response.put("message", "Employee deleted successfully");
        } catch (Exception e) {
            response.put("success", false);
            response.put("message", "Failed to delete employee");
        }
        return response;
    }
}
