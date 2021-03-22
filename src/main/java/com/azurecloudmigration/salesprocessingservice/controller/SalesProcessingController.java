package com.azurecloudmigration.salesprocessingservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.azurecloudmigration.salesprocessingservice.exception.UserNotFoundException;
import com.azurecloudmigration.salesprocessingservice.model.QuotesDetails;
import com.azurecloudmigration.salesprocessingservice.model.TokenInvalidException;
import com.azurecloudmigration.salesprocessingservice.serivice.SalesProcessingService;

import lombok.extern.java.Log;

@Log
@RestController
public class SalesProcessingController {
	@Autowired
	private SalesProcessingService salesProcessingService;
	
	

	@PostMapping("/saveQuote")
	public ResponseEntity<QuotesDetails> saveQuotesDetails(@RequestBody QuotesDetails quotesDetails) {
		log.info("INSIDE CREATE QUOTE CONTROLLER");
		QuotesDetails quotesDetails2 =salesProcessingService.saveQuotes(quotesDetails);
		ResponseEntity<QuotesDetails> response = new ResponseEntity<QuotesDetails>(quotesDetails2,HttpStatus.OK);
		log.info("END OF CREATE QUOTE CONTROLLER");
		return response;
	}
	
	
	@GetMapping("/viewQuote/{userId}")
	public QuotesDetails viewQuoteDetails(@PathVariable("userId") Long userId) throws UserNotFoundException 
	{
		log.info("INSIDE VIEW QUOTE CONTROLLER");
		return salesProcessingService.viewQuotes(userId);
		
	}
	

}
