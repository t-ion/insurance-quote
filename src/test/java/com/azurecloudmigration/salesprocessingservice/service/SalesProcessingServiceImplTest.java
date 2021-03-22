package com.azurecloudmigration.salesprocessingservice.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.azurecloudmigration.salesprocessingservice.exception.UserNotFoundException;
import com.azurecloudmigration.salesprocessingservice.model.QuotesDetails;
import com.azurecloudmigration.salesprocessingservice.repository.QuotesDetailsRepository;
import com.azurecloudmigration.salesprocessingservice.serivice.SalesProcessingServiceImpl;

@SpringBootTest
@AutoConfigureMockMvc
public class SalesProcessingServiceImplTest {
	@InjectMocks
	private SalesProcessingServiceImpl salesProcessingServiceImpl;
	
	@Mock
	private QuotesDetailsRepository quotesDetailsRepository;
	
	@Test
	public void testSaveQuotes() {
		QuotesDetails quotesDetails = new QuotesDetails(1L,"Ross",null,"male",1200,"9500619684");
		ResponseEntity<QuotesDetails> quotes = new ResponseEntity((quotesDetails),HttpStatus.OK);
		assertEquals(quotes.getBody(), salesProcessingServiceImpl.saveQuotes(quotesDetails));
	}
	
	@Test
	public void testViewQuotes() throws UserNotFoundException {
		QuotesDetails quotesDetails = new QuotesDetails(1L,"Ross",null,"male",1200,"9500619684");
		ResponseEntity<QuotesDetails> quotes = new ResponseEntity((quotesDetails),HttpStatus.OK);
		when(quotesDetailsRepository.findById(1L)).thenReturn(Optional.of(quotesDetails));
		assertEquals(quotesDetails, salesProcessingServiceImpl.viewQuotes(1L));
	}

}
