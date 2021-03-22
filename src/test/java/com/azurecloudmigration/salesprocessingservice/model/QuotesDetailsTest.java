package com.azurecloudmigration.salesprocessingservice.model;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class QuotesDetailsTest {
	
	QuotesDetails quotesDetailsone = new QuotesDetails();
	QuotesDetails quotesDetailsTwo = new QuotesDetails(1L,"Ross",null,"male",1200,"9500619684");
	
	@Test
	public void testUserId()
	{
		quotesDetailsone.setId(1L);
		assertEquals(quotesDetailsone.getId(), 1L);
	}
	
	@Test
	public void testUsername()
	{
		quotesDetailsone.setName("Ross");
		assertEquals(quotesDetailsone.getName(), "Ross");
	}
	
	@Test
	public void testDob()
	{
		quotesDetailsone.setDateOfBirth(null);
		assertEquals(quotesDetailsone.getDateOfBirth(), null);
	}
	
	
	@Test
	public void testUserGender()
	{
		quotesDetailsone.setGender("Male");
		assertEquals(quotesDetailsone.getGender(),"Male");
	}
	
	@Test
	public void testUserQamount()
	{
		quotesDetailsone.setQuoteAmount(1200);
		assertEquals(quotesDetailsone.getQuoteAmount(),1200);
	}
	
	@Test
	public void testUserPnumber()
	{
		quotesDetailsone.setPhoneNumber("9500619684");
		assertEquals(quotesDetailsone.getPhoneNumber(),"9500619684");
	}
	
	
	

}