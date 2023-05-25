package com.bankRetail.Interface;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bankRetail.Entity.Customer;
@Repository
public interface BankRepository extends CrudRepository<Customer, Integer> {

}

