package com.hmytri.service;

import java.util.List;

import com.hmytri.entity.EmployeeEntity;

public interface EmployeeManager {
	public void addEmployee(EmployeeEntity employee);
    public List<EmployeeEntity> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
    
    public List<EmployeeEntity> searchEmployee(EmployeeEntity employee);
}
