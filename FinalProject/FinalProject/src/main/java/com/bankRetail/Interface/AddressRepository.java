package com.bankRetail.Interface;

import org.springframework.data.jpa.repository.JpaRepository;
import com.bankRetail.Entity.Address;

public interface AddressRepository extends JpaRepository<Address, Integer>{

}
