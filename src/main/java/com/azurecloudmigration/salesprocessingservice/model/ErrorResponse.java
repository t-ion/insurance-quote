package com.azurecloudmigration.salesprocessingservice.model;

import java.time.LocalDateTime;

import org.springframework.http.HttpStatus;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**Details will assigned while returning custom error message*/
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ErrorResponse 
{
	/**
	*  status-contains HttpStatus
	*/
	private HttpStatus status;
	/**
	*  timestamp-contains timestamp
	*/
	private LocalDateTime timestamp;
	/**
	*  message-contains custom error message
	*/
	private String message;
}