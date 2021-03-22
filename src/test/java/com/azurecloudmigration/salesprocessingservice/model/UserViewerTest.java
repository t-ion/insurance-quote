package com.azurecloudmigration.salesprocessingservice.model;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class UserViewerTest {
	
	UserViewer userViewer = new UserViewer();
	UserViewer userViewer1 = new UserViewer(1L);
	
	@Test
	public void testUid()
	{
		userViewer.setId(1L);
		assertEquals(userViewer.getId(), 1L);
	}
	

}
