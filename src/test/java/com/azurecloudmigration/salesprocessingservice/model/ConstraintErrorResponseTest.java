package com.azurecloudmigration.salesprocessingservice.model;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;

public class ConstraintErrorResponseTest 
{
	private String testString = "HI,Hello";
	private List<String> testList = Arrays.asList(testString.split(","));
	private ConstraintErrorResponse constraintErrorResponse = new ConstraintErrorResponse(HttpStatus.OK,LocalDateTime.MAX,testList);
	
	@Test
	public void testStatus() 
	{
		constraintErrorResponse.setHttpStatus(HttpStatus.ACCEPTED);
		assertEquals(constraintErrorResponse.getHttpStatus(), HttpStatus.ACCEPTED);
	}

	@Test
	public void testDate() {
		constraintErrorResponse.setTimestamp(LocalDateTime.MIN);
		assertEquals(constraintErrorResponse.getTimestamp(), LocalDateTime.MIN);
	}
	
	@Test
	public void testArrayList() {
		constraintErrorResponse.setMessage(testList);
		assertEquals(constraintErrorResponse.getMessage().get(0),testList.get(0));
	}
	
}