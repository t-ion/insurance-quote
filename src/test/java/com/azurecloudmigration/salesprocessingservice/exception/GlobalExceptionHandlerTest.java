package com.azurecloudmigration.salesprocessingservice.exception;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;

import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.azurecloudmigration.salesprocessingservice.model.ErrorResponse;




public class GlobalExceptionHandlerTest 
{
	private GlobalExceptionHandler globalExceptionHandler = new GlobalExceptionHandler();
	private UserNotFoundException userNotFoundException = new UserNotFoundException("user Not Found");
	private ConstraintViolationException constraintViolationException = new ConstraintViolationException("Violation",new HashSet<ConstraintViolation<?>>());
	private ErrorResponse errorResponse;
	
	
	
	
	
	@Test
	public void userNotFoundTest() 
	{
		errorResponse = globalExceptionHandler.userNotFoundException(userNotFoundException);
		assertEquals(HttpStatus.NOT_FOUND, errorResponse.getStatus());
	}
	
	
	@Test
	public void constraintViolationTest() 
	{
		List<String> errorMessages = new ArrayList<String>();
		for(ConstraintViolation<?> constraintViolation:constraintViolationException.getConstraintViolations()) 
		{
			errorMessages.add(constraintViolation.getPropertyPath()+":"+constraintViolation.getMessage()+",Value given by you is "+constraintViolation.getInvalidValue());
		}
		ResponseEntity<?> response = globalExceptionHandler.constraintValidationException(constraintViolationException);
		assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
	}
}