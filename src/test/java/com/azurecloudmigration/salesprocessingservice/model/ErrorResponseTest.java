package com.azurecloudmigration.salesprocessingservice.model;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.time.LocalDateTime;

import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;

public class ErrorResponseTest {
	ErrorResponse errorResponseOne = new ErrorResponse();
	ErrorResponse errorResponseTwo = new ErrorResponse(HttpStatus.OK, LocalDateTime.MAX, "Testing");

	@Test
	public void testStatus() {
		errorResponseOne.setStatus(HttpStatus.OK);
		assertEquals(errorResponseOne.getStatus(), HttpStatus.OK);
	}

	@Test
	public void testDate() {
		errorResponseOne.setTimestamp(LocalDateTime.MAX);
		assertEquals(errorResponseOne.getTimestamp(), LocalDateTime.MAX);
	}

	@Test
	public void testMsg() {
		errorResponseOne.setMessage("Testing");
		assertEquals(errorResponseOne.getMessage(), "Testing");
	}

}
