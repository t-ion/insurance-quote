package com.azurecloudmigration.salesprocessingservice.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.azurecloudmigration.salesprocessingservice.exception.UserNotFoundException;
import com.azurecloudmigration.salesprocessingservice.model.QuotesDetails;
import com.azurecloudmigration.salesprocessingservice.serivice.SalesProcessingService;

@SpringBootTest(classes = SalesProcessingControllerTest.class)
public class SalesProcessingControllerTest {
	@InjectMocks
	private SalesProcessingController salesProcessingController;
	
	@Mock
	private SalesProcessingService salesProcessingService;
	
	@Test
	public void testSaveQuotes() {
		QuotesDetails quotesDetails = new QuotesDetails(1L,"Ross",null,"male",1200,"9500619684");
		ResponseEntity<QuotesDetails> quotes = new ResponseEntity((quotesDetails),HttpStatus.OK);
		when(salesProcessingService.saveQuotes(quotesDetails)).thenReturn(quotes.getBody());
		assertEquals(quotesDetails,salesProcessingController.saveQuotesDetails(quotesDetails).getBody());
	}
	
	@Test
	public void testViewQuotes() throws UserNotFoundException {
		QuotesDetails quotesDetails = new QuotesDetails(1L,"Ross",null,"male",1200,"9500619684");
		when(salesProcessingService.viewQuotes(1L)).thenReturn(quotesDetails);
		assertEquals(quotesDetails, salesProcessingController.viewQuoteDetails(1L));
	}


}
