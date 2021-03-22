package com.azurecloudmigration.salesprocessingservice.model;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class ValidationResponseTest {
	ValidationResponse validationResponse = new ValidationResponse();
	ValidationResponse validationResponse1 = new ValidationResponse("User1", true);

	@Test
	public void testUserName() {
		validationResponse.setUsername("User1");
		assertEquals(validationResponse.getUsername(), "User1");
	}

	@Test
	public void testIsvalid() {
		validationResponse.setIsValid(true);
		assertEquals(validationResponse.getIsValid(), true);
	}

}
