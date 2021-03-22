package com.azurecloudmigration.salesprocessingservice.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;

import com.azurecloudmigration.salesprocessingservice.model.ValidationResponse;



/**Interface to connect with authentication service*/
@FeignClient(name = "${authentication.feign.client.name}", url = "${authentication.feign.client.url}")
public interface AuthenticationProxy 
{
	/**
	 * @param token
	 * @return ValidationResponse
	 */
	@GetMapping("/validate")
	public ValidationResponse validateUser(@RequestHeader("Authorization") final String token);
}