package com.hmytri.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hmytri.entity.EmployeeEntity;
import com.hmytri.service.EmployeeManager;

@Controller
public class EditEmployeeController {

	@Autowired
	private EmployeeManager employeeManager;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		dateFormat.setLenient(false);
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listEmployees(ModelMap map) {
		map.addAttribute("employee", new EmployeeEntity());
		// map.addAttribute("employeeList", employeeManager.getAllEmployees());

		// return "editEmployeeList";
		return "search";

	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute(value = "employee") EmployeeEntity employee, BindingResult result,
			ModelMap map, HttpServletRequest request) {

		if (!request.getParameter("buttonClicked").equals("Back to Search")) {
			employeeManager.addEmployee(employee);
		}
		map.addAttribute("employee", new EmployeeEntity());
		return "search";
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchEmployee(@ModelAttribute(value = "employee") EmployeeEntity employee, ModelMap map,
			HttpServletRequest request) {

		System.out.println("what button clicked: " + request.getParameter("buttonClicked"));
		if (request.getParameter("buttonClicked").equals("Add Employee")) {
			System.out.println("in Add Employee");
			return "editEmployeeList";
		}

		map.remove("employeeList");
		map.addAttribute("employeeList", employeeManager.searchEmployee(employee));

		return "search";
	}

	@RequestMapping("/delete/{employeeId}")
	public String deleteEmplyee(@PathVariable("employeeId") Integer employeeId) {
		employeeManager.deleteEmployee(employeeId);
		return "redirect:/";
	}

	public void setEmployeeManager(EmployeeManager employeeManager) {
		this.employeeManager = employeeManager;
	}
}
