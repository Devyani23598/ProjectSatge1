package com.zensar.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.zensar.bean.AdminLogin;
import com.zensar.bean.BusinessListing;
import com.zensar.bean.CategoryMaster;
import com.zensar.bean.City;
import com.zensar.repository.CityRepository;
import com.zensar.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	City city;
	@Autowired
	AdminLogin adminLogin;
	@Autowired
	BusinessListing businessListing;
	@Autowired
	CategoryMaster categoryMaster;

	@Autowired
	AdminService adminService;

	@RequestMapping("/")
	public ModelAndView welcome(){
		ModelAndView modelAndView=new ModelAndView("welcome.jsp");
		return modelAndView;
	}
	
	
	
	@RequestMapping("/admin")
	public ModelAndView checkLogin(@RequestParam("userName") String userName,
			@RequestParam("password") String password) {
		System.out.println("I am inside checkLogin() method...");
		System.out.println("username:" + userName);
		System.out.println("password:" + password);
		adminLogin.setUserName(userName);
		adminLogin.setPassword(password);
		System.out.println(adminLogin);
		// connect to db and check the validity of credentials
		AdminLogin adminLogin1 = adminService.findbyId(userName);
		ModelAndView modelAndView;
		if (adminLogin != null && adminLogin.getPassword().equals(password)) {
			// forward to success.jsp
			modelAndView = new ModelAndView("index.jsp");
		} else {
			// forward back to index.jsp page with the error message
			modelAndView = new ModelAndView("login.jsp");
			modelAndView.addObject("errorMessage", "Invalid Login or Password credentials Please try again!!");
		}
		return modelAndView;
	}

	@RequestMapping("/addCity")
	public ModelAndView addCity(City city) {
		System.out.println("I addC()");
		adminService.addCity(city);
		ModelAndView modelAndView = new ModelAndView("addCity.jsp");
		return modelAndView;

	}

	@RequestMapping("/addBusinessListing1")
	public ModelAndView addBusinessListing() {

		System.out.println("I addB()");

		List<City> listOfAllCities = new ArrayList<City>();
		listOfAllCities = (List<City>) adminService.findAll();
		List<CategoryMaster> listOfAllCategories = new ArrayList<CategoryMaster>();
		listOfAllCategories = (List<CategoryMaster>) adminService.findAllByCategory();
		// adminService.addBusinessListing(businessListing);
		// BusinessListing bs = adminService.addBusinessListing(businessListing);
		ModelAndView modelAndView = new ModelAndView("addBusinessListing.jsp");

		System.out.println("Inside business jsp");

		modelAndView.addObject("listCities", listOfAllCities);
		// modelAndView.addObject("addBusinessListing", bs);
		modelAndView.addObject("listCategories", listOfAllCategories);
		return modelAndView;

	}

	@RequestMapping("/addBusinessListing")
	public ModelAndView addBusinessListingSave(@RequestParam("listingId") Integer listingId, @RequestParam("businessName") String businessName, @RequestParam("businessDiscription") String businessDiscription,  @RequestParam("address") String address, @RequestParam("cityId") Integer cityId, @RequestParam("categoryId") Integer categoryId) 
	{	
		System.out.println("CIRI addC()");
		businessListing.setListingId(listingId);
		businessListing.setBusinessName(businessName);
		businessListing.setBusinessDiscription(businessDiscription);
		businessListing.setAddress(address);
		businessListing.setCityId(cityId);
		businessListing.setCategoryId(categoryId);
		adminService.addBusinessListingSave(businessListing);
		System.out.println("I addC()");
		
		ModelAndView modelAndView = new ModelAndView("index.jsp");
		return modelAndView;

	}

	@RequestMapping("/addCategoryMaster")
	public ModelAndView addCategoryMaster(CategoryMaster categoryMaster) {
		System.out.println("I addCM()");
		adminService.addCategoryMaster(categoryMaster);
		ModelAndView modelAndView = new ModelAndView("addCategoryMaster.jsp");
		return modelAndView;

	}

	@RequestMapping("/viewAllCities")
	public ModelAndView getAllCities() {
		System.out.println("view city");
		List<City> listOfAllCities = new ArrayList<City>();
		listOfAllCities = (List<City>) adminService.findAll();
		ModelAndView modelAndView = new ModelAndView("viewAllCity.jsp");
		modelAndView.addObject("listCities", listOfAllCities);
		return modelAndView;

	}
	
	@RequestMapping("/citydetails")
	public ModelAndView findByCategoryIdAndCityId(@RequestParam(value="categoryId") int categoryId,@RequestParam(value="cityId") int cityId) {
		System.out.println("hospital");
		BusinessListing businessListing = new BusinessListing();
		//if(categoryId==businessListing.getCategoryId() && cityId==businessListing.getCityId()) {
			List<BusinessListing>  businessListing1 = (List<BusinessListing>) adminService.findByCategoryIdAndCityId(categoryId,cityId);
		//}

		ModelAndView modelAndView = new ModelAndView("viewHospital.jsp");
		modelAndView.addObject("blist", businessListing1);
         return modelAndView;

	}
	
}