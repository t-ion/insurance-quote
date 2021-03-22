package com.azurecloudmigration.salesprocessingservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.azurecloudmigration.salesprocessingservice.model.QuotesDetails;

@Repository
public interface QuotesDetailsRepository extends JpaRepository<QuotesDetails, Long> {

}
