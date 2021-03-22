package com.azurecloudmigration.salesprocessingservice.serivice;

import org.springframework.ui.ModelMap;

import com.azurecloudmigration.salesprocessingservice.exception.UserNotFoundException;
import com.azurecloudmigration.salesprocessingservice.model.QuotesDetails;
import com.azurecloudmigration.salesprocessingservice.model.TokenInvalidException;
import com.azurecloudmigration.salesprocessingservice.model.UserViewer;
/** Interface which have the methods of service class */
public interface SalesProcessingService {
	public QuotesDetails saveQuotes(QuotesDetails quotesDetails );
	
	public QuotesDetails viewQuotes(Long userId) throws UserNotFoundException;
	
	public String viewDetails(UserViewer userViewer,ModelMap modelMap) throws UserNotFoundException;

	

}
