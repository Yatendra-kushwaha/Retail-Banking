package com.bankRetail.Interface;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bankRetail.Entity.Transactions;

public interface TransactionRepository extends JpaRepository<Transactions, Integer>{

}
