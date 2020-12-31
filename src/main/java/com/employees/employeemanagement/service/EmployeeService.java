package com.employees.employeemanagement.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employees.employeemanagement.model.Employee;
import com.employees.employeemanagement.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	@Autowired
	EmployeeRepository repository;

	
	public Employee findEmployeeById(Long id) {
		Optional<Employee> emp = repository.findById(id);

		if (emp.isPresent()) {
			return emp.get();
		} else {
			return null;
		}
	}


}
