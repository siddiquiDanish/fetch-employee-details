package com.employees.employeemanagement.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employees.employeemanagement.model.Employee;
import com.employees.employeemanagement.service.EmployeeService;

@Controller
public class EmployeeController {
	
	
	@Autowired
	EmployeeService service;
	

	
 	@GetMapping(value = "/home")
 	public String searchHome(ModelMap model) {
 		
 		return "home";
 	}
	
	@PostMapping(value = "/home")
	public String searchEmployee(@RequestParam("id") Long id, ModelMap model, HttpSession session) {
		Employee employee = service.findEmployeeById(id);
		session.setAttribute("employeeid", id);
		model.addAttribute("employee", employee);
		return "details";
	}
	
	@GetMapping(value = "/details")
	public String employeeDetailsHome(ModelMap model, HttpSession session) {
		Long employeeid = (Long) session.getAttribute("employeeid");
		Employee employee = service.findEmployeeById(employeeid);
		model.addAttribute("employee", employee);
		
		return "details";
	}

}
