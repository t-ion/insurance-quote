package com.azurecloudmigration.salesprocessingservice.exception;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.azurecloudmigration.salesprocessingservice.model.ConstraintErrorResponse;
import com.azurecloudmigration.salesprocessingservice.model.ErrorResponse;




@RestControllerAdvice
public class GlobalExceptionHandler {
	@ExceptionHandler(ConstraintViolationException.class)
	@ResponseStatus(code = HttpStatus.BAD_REQUEST)
	public ResponseEntity<?> constraintValidationException(ConstraintViolationException constraintViolationException)
	{
		List<String> errorMessages = new ArrayList<String>();
		for(ConstraintViolation<?> constraintViolation:constraintViolationException.getConstraintViolations()) 
		{
			errorMessages.add(constraintViolation.getPropertyPath()+":"+constraintViolation.getMessage()+",Value given by you is "+constraintViolation.getInvalidValue());
		}
		return ResponseEntity.badRequest().body(new ConstraintErrorResponse(HttpStatus.BAD_REQUEST,LocalDateTime.now(),errorMessages));
		
	}
	@ExceptionHandler(UserNotFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public ErrorResponse userNotFoundException(UserNotFoundException userNotFoundException) 
	{
		return new ErrorResponse(HttpStatus.NOT_FOUND, LocalDateTime.now(), userNotFoundException.getMessage());
	}

}
