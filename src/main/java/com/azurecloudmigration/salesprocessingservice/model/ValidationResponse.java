package com.azurecloudmigration.salesprocessingservice.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

/**Details to this class will be assigned after validating the user*/
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ValidationResponse 
{
	/**
	*  username-contains Agent's username
	*/
	private String username;
	/**
	*  isValid-validity of the user
	*/
	private Boolean isValid;
}