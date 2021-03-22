package com.azurecloudmigration.salesprocessingservice.serivice;

import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.azurecloudmigration.salesprocessingservice.exception.UserNotFoundException;
import com.azurecloudmigration.salesprocessingservice.feign.AuthenticationProxy;
import com.azurecloudmigration.salesprocessingservice.model.QuotesDetails;
import com.azurecloudmigration.salesprocessingservice.model.TokenInvalidException;
import com.azurecloudmigration.salesprocessingservice.model.TokenInvalidExceptionMessageConstants;
import com.azurecloudmigration.salesprocessingservice.model.UserViewer;
import com.azurecloudmigration.salesprocessingservice.repository.QuotesDetailsRepository;

import lombok.extern.java.Log;
@Log
@Service
public class SalesProcessingServiceImpl implements SalesProcessingService {
	@Autowired
	private QuotesDetailsRepository quotesDetailsRepository;
	@Autowired
	private AuthenticationProxy authenticationProxy;

	@Override
	public QuotesDetails saveQuotes(QuotesDetails quotesDetails) {
		// TODO Auto-generated method stub
		log.info("INSIDE CREATE QUOTE SERVICE");
		quotesDetailsRepository.save(quotesDetails);
		log.info("END OD CREATE QUOTE SERVICE");
		return quotesDetails;
		
	}

	@Override
	public QuotesDetails viewQuotes(Long userId) throws UserNotFoundException  {
		// TODO Auto-generated method stub
		log.info("INSIDE VIEW QUOTE SERVICE");
		QuotesDetails quotesDetails;
		try {
		 quotesDetails=quotesDetailsRepository.findById(userId).get();
		} catch (NoSuchElementException noSuchElementException) {
			throw new UserNotFoundException("Incorrect User Id");
		}
		log.info("END OF VIEW QUOTE SERVICE");
		return quotesDetails;
		
	}

	@Override
	public String viewDetails(UserViewer userViewer, ModelMap modelMap) throws UserNotFoundException {
		// TODO Auto-generated method stub
		log.info("INSIDE VIEW QUOTE UI SERVICE");
		QuotesDetails quotesDetails;
		quotesDetails=viewQuotes(userViewer.getId());
		modelMap.addAttribute("details", quotesDetails);
		return null;
	}

}
