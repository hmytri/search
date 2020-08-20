package com.hmytri.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hmytri.entity.EmployeeEntity;

@Repository
public class EmployeeDaoImpl implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addEmployee(EmployeeEntity employee) {
		this.sessionFactory.getCurrentSession().save(employee);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<EmployeeEntity> searchEmployee(EmployeeEntity employee) {

		System.out.println("Employee Search Criteria : " + employee);
		StringBuilder strQuery = new StringBuilder("from EmployeeEntity");
		boolean where = false;

		if (employee.getFirstname() != null && !employee.getFirstname().equals("")) {
			where = true;
			strQuery.append(" where firstname = :firstname");
		}
		if (employee.getLastname() != null && !employee.getLastname().equals("")) {
			if (!where) {
				strQuery.append(" where");
				where = true;
			} else {
				strQuery.append(" and");
			}

			strQuery.append(" lastname = :lastname");
		}
		if (employee.getStartdate() != null) {
			if (!where) {
				strQuery.append(" where");
				where = true;
			} else {
				strQuery.append(" and");
			}
			strQuery.append(" startdate >= :startdate");
		}
		if (employee.getEnddate() != null) {
			if (!where) {
				strQuery.append(" where");
				where = true;
			} else {
				strQuery.append(" and");
			}
			strQuery.append(" enddate <= :enddate");
		}

		Query query = this.sessionFactory.getCurrentSession().createQuery(strQuery.toString());

		if (employee.getFirstname() != null && !employee.getFirstname().equals("")) {
			query.setString("firstname", employee.getFirstname());
		}
		if (employee.getLastname() != null && !employee.getLastname().equals("")) {
			query.setString("lastname", employee.getLastname());
		}
		if (employee.getStartdate() != null) {
			query.setParameter("startdate", employee.getStartdate());
		}
		if (employee.getEnddate() != null) {
			query.setParameter("enddate", employee.getEnddate());
		}
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<EmployeeEntity> getAllEmployees() {
		return this.sessionFactory.getCurrentSession().createQuery("from EmployeeEntity").list();
	}

	@Override
	public void deleteEmployee(Integer employeeId) {
		EmployeeEntity employee = (EmployeeEntity) sessionFactory.getCurrentSession().load(EmployeeEntity.class,
				employeeId);
		if (null != employee) {
			this.sessionFactory.getCurrentSession().delete(employee);
		}
	}

}
