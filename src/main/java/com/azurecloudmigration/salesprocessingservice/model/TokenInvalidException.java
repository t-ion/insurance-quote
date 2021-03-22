package com.azurecloudmigration.salesprocessingservice.model;

/**Custom exception class*/
public class TokenInvalidException extends Exception 
{
	/**
	 * @param message
	 * @return nothing
	 */
	public TokenInvalidException(String message) 
	{
		super(message);
	}
}