package com.hmytri.dao;

import java.util.List;
import com.hmytri.entity.EmployeeEntity;

public interface EmployeeDAO 
{
    public void addEmployee(EmployeeEntity employee);
    public List<EmployeeEntity> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
    
    public List<EmployeeEntity> searchEmployee(EmployeeEntity employee);
}