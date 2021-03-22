package com.azurecloudmigration.salesprocessingservice.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.azurecloudmigration.salesprocessingservice.exception.UserNotFoundException;
import com.azurecloudmigration.salesprocessingservice.model.QuotesDetails;
import com.azurecloudmigration.salesprocessingservice.model.UserViewer;
import com.azurecloudmigration.salesprocessingservice.serivice.SalesProcessingService;

import lombok.extern.java.Log;

@Log
@Controller
public class Uicontroller {
	@Autowired
	private SalesProcessingService salesProcessingService;
	
	
	@GetMapping(path="create")
	public ModelAndView getcreate() {
		log.info("INSIDE ENTER QUOTE UI CONTROLLER");
		return new ModelAndView("createquote");
	}
	
	@PostMapping(path= "save")
	public String saveQuotesDetails(@ModelAttribute("QuotesDetails") QuotesDetails quotesDetails) {
		log.info("INSIDE CREATE QUOTE UI CONTROLLER");
		QuotesDetails quotesDetails2 =salesProcessingService.saveQuotes(quotesDetails);
		//ResponseEntity<QuotesDetails> response = new ResponseEntity<QuotesDetails>(quotesDetails2,HttpStatus.OK);
		log.info("END OF CREATE QUOTE UI CONTROLLER");
		return "createquote";
	}
	@GetMapping(path="enteruserid")
	public String getuserid() {
		log.info("INSIDE ENTER USER ID UI CONTROLLER");
		return "Enteruserid";
	}
	
	@GetMapping("view")
	public String viewBusiness(UserViewer userViewer, ModelMap modelMap) throws UserNotFoundException{
		log.info("INSIDE VIEW QUOTE UI CONTROLLER");
		return salesProcessingService.viewDetails(userViewer, modelMap);
	}
	

}
