package ru.codeinside.stream.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.codeinside.stream.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
