package com.azurecloudmigration.salesprocessingservice.exception;

/**Custom exception class*/
public class UserNotFoundException extends Exception  {
	/**
	 * @param message
	 * @return nothing
	 */
	public UserNotFoundException(String message) 
	{
		super(message);
	}

}
