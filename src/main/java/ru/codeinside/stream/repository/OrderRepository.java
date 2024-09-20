package ru.codeinside.stream.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.codeinside.stream.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
