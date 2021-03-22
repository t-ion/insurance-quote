package com.azurecloudmigration.salesprocessingservice.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class QuotesDetails {
	/** Id of the  user */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	/** Name of the user */
	@NotEmpty(message = "User name cannot be empty")
	@Pattern(regexp = "[A-z]+",message = "User name must be a word")
	@Size(min = 1,max = 20)
	private String name;
	/**Date of birth of the user*/
	@NotNull(message = "Date of birth cannot be empty")
	private Date dateOfBirth;
	/**Gender of the user */
	@NotEmpty(message = "Gender cannot be empty")
	private String gender;
	/**Quote amount of user*/
	@NotNull(message = "Quote amount cannot be empty")
	private int quoteAmount;
	/**Quote amount of user*/
	@NotEmpty(message = "Phone Number cannot be empty")
	@Pattern(regexp="(^$|[0-9]{10})")
	private String phoneNumber;
	

}
