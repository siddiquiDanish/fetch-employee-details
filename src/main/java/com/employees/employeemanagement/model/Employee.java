package com.employees.employeemanagement.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class Employee {

	@Id
	@Size(min = 6, max = 6, message = "Enter six digit Cognizant ID")
	private Long id;
	private String cognizantName;
	private Date effectiveDate;

	public Employee(Long cognizantId, String cognizantName, Date effectiveDate) {
		
		this.id = id;
		this.cognizantName = cognizantName;
		this.effectiveDate = effectiveDate;
	}

	public Long getId() {
		return id;
	}

	public String getCognizantName() {
		return cognizantName;
	}

	public Date getEffectiveDate() {
		return effectiveDate;
	}

	@Override
	public String toString() {
		return "Employee [cognizantId=" + id + ", cognizantName=" + cognizantName + ", effectiveDate=" + effectiveDate
				+ "]";
	}

	
	public Employee() {
	}
	

}
