package ru.codeinside.stream.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.codeinside.stream.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
