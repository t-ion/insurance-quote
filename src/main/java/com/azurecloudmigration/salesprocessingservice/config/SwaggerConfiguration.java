package com.azurecloudmigration.salesprocessingservice.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**Configuration for swagger*/
@Configuration
@EnableSwagger2
public class SwaggerConfiguration {

	/**
	 * @return Docket
	 */
	@Bean
	public Docket api() {
		return new Docket(DocumentationType.SWAGGER_2).select()
				.apis(RequestHandlerSelectors.basePackage("com.azurecloudmigration.salesprocessingservice"))
				.paths(PathSelectors.any()).build();
	}
	
    /**
     * @return ApiInfo
     */
    public ApiInfo apiEndPointInfo(){
        return new ApiInfoBuilder().title("Sales Processing Service")
                .description("Sales Processsing API")
                .version("0.0.1-SNAPSHOT")
                .build();
    }
}