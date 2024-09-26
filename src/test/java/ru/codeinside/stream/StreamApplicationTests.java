package ru.codeinside.stream;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import ru.codeinside.stream.entity.Customer;
import ru.codeinside.stream.entity.Order;
import ru.codeinside.stream.entity.Product;
import ru.codeinside.stream.repository.CustomerRepository;
import ru.codeinside.stream.repository.OrderRepository;
import ru.codeinside.stream.repository.ProductRepository;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Comparator;
import java.util.DoubleSummaryStatistics;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;

@Slf4j
@DataJpaTest
class StreamApplicationTests {
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private OrderRepository orderRepository;

    @Test
    @DisplayName("tack1: Получить список товаров в категории = \"Книги\" у которых цена > 1000")
    void tack1() {
        List<Product> result = productRepository.findAll().stream()
                .filter(p -> "Книги".equals(p.getCategory()) && p.getPrice() > 1000)
                .collect(Collectors.toList());
        result.forEach(p -> log.info(p.toString()));
    }


    @Test
    @DisplayName("tack2: Получить список товаров в категории = \"Книги\" у которых цена > 1000, используйте Predicate для фильтра")
    void tack2() {
        Predicate<Product> categoryFilter = p -> "Книги".equals(p.getCategory());
        Predicate<Product> priceFilter = p -> p.getPrice() > 1000;

        List<Product> result = productRepository.findAll().stream()
                .filter(categoryFilter.and(priceFilter))
                .collect(Collectors.toList());
        result.forEach(p -> log.info(p.toString()));
    }


    @Test
    @DisplayName("tack3: Получить список заказов товара с категорией = \"Товары для дома\"")
    void tack3() {
        List<Order> result = orderRepository.findAll().stream()
                .filter(order -> order.getProducts().stream()
                        .anyMatch(product -> "Товары для дома".equals(product.getCategory())))
                .collect(Collectors.toList());
        result.forEach(o -> log.info(o.toString()));
    }


    @Test
    @DisplayName("tack4: Получить список товаров с категорией = “Игры”, а затем применить скидку 5% к каждой позиции в списке")
    void tack4() {
        List<Product> result = productRepository.findAll().stream()
                .filter(p -> "Игры".equals(p.getCategory()))
                .peek(p -> p.setPrice(p.getPrice() * 0.95))
                .collect(Collectors.toList());
        result.forEach(p -> log.info(p.toString()));
    }


    @Test
    @DisplayName("tack5: Получить список продуктов, заказанных клиентом c уровнем 2 в период с 01 марта 2022 года по 01 апреля 2022 года, используя Instant")
    void tack5() {

        Instant startDate = LocalDate.of(2022, 3, 1)
                .atStartOfDay(ZoneId.systemDefault())
                .toInstant();
        Instant endDate = LocalDate.of(2022, 4, 1)
                .atStartOfDay(ZoneId.systemDefault())
                .toInstant();

        List<Product> result = orderRepository.findAll().stream()
                .filter(order -> order.getCustomer().getLevel() == 2)
                .filter(order -> {
                    Instant orderDate = order.getOrderDate().atStartOfDay(ZoneId.systemDefault()).toInstant();
                    return !orderDate.isBefore(startDate) && !orderDate.isAfter(endDate);
                })
                .flatMap(order -> order.getProducts().stream())
                .distinct()
                .collect(Collectors.toList());

        result.forEach(p -> log.info(p.toString()));
    }



    @Test
    @DisplayName("tack6: Получите 3 самых дешевых товара из категории \"Товары для дома\"")
    void tack6() {
        List<Product> result = productRepository.findAll().stream()
                .filter(p -> "Товары для дома".equals(p.getCategory()))
                .sorted(Comparator.comparing(Product::getPrice))
                .limit(3)
                .collect(Collectors.toList());
        result.forEach(p -> log.info(p.toString()));
    }


    @Test
    @DisplayName("tack7: Получите 2 самых последних размещенных заказа")
    void tack7() {
        List<Order> result = orderRepository.findAll().stream()
                .sorted(Comparator.comparing(Order::getOrderDate).reversed())
                .limit(2)
                .collect(Collectors.toList());
        result.forEach(o -> log.info(o.toString()));
    }


    @Test
    @DisplayName("tack8: Получите список товаров, которые были заказаны 22 марта 2022 года")
    void tack8() {
        LocalDate targetDate = LocalDate.of(2022, 3, 22);

        List<Product> result = orderRepository.findAll().stream()
                .filter(order -> targetDate.equals(order.getOrderDate()))
                .flatMap(order -> order.getProducts().stream())
                .distinct()
                .collect(Collectors.toList());
        result.forEach(p -> log.info(p.toString()));
    }


    @Test
    @DisplayName("tack9: Рассчитайте общую сумму всех заказов, размещенных в апреле 2022 года")
    void tack9() {
        //double result;
        //TODO
        //log.info("Общая сумма = " + result);
        double result = orderRepository.findAll().stream().filter(p->
                p.getOrderDate().isAfter(LocalDate.of(2022,3,31)) &&
                p.getOrderDate().isBefore(LocalDate.of(2022,5,1))).flatMapToDouble(
                        p-> DoubleStream.of(p.getProducts().stream().mapToDouble(s->s.getPrice()).sum())
        ).sum();
        log.info("Общая сумма = " + result);
    }

    @Test
    @DisplayName("tack10: Рассчитайте среднюю цену всех заказов, размещенных 10 апреля 2022 года")
    void tack10() {
        //double result;
        //TODO
        //log.info("Средняя цена = " + result);
        long count = orderRepository.findAll().stream()
                .filter(p -> p.getOrderDate().isEqual(LocalDate.of(2022, 4, 10))).count();
        double result = orderRepository.findAll().stream()
                .filter(p -> p.getOrderDate().isEqual(LocalDate.of(2022, 4, 10)))
                .flatMapToDouble(p -> DoubleStream.of(p.getProducts().stream().mapToDouble(s -> s.getPrice()).sum())).sum()/count;
        log.info("Средняя цена = " + result);
    }


    @Test
    @DisplayName("tack11: Получить сводную статистику по всем товарам категории \"Книги\"")
    void tack11() {
        DoubleSummaryStatistics statistics = productRepository.findAll().stream()
                .filter(p -> "Книги".equals(p.getCategory()))
                .mapToDouble(Product::getPrice)
                .summaryStatistics();

        log.info("count = {}, average = {}, max = {}, min = {}, sum = {}",
                statistics.getCount(),
                statistics.getAverage(),
                statistics.getMax(),
                statistics.getMin(),
                statistics.getSum());
    }

    @Test
    @DisplayName("tack12: Получить ассоциативный массив с order_id и количеством product в заказе")
    void tack12() {
        //Map<Long, Integer> result = null;
        //TODO
        //log.info(result.toString());
        Map<Long, Integer> result = null;
        result = orderRepository.findAll().stream().collect(Collectors.toMap(s->s.getId(),p->p.getProducts().size()));
        log.info(result.toString());
    }

    @Test
    @DisplayName("tack13: Получить ассоциативный массив данных customer список orders")
    void tack13() {
        Map<Customer, List<Order>> result = orderRepository.findAll().stream()
                .collect(Collectors.groupingBy(Order::getCustomer));

        log.info(result.toString());
    }


    @Test
    @DisplayName("tack14: Получить ассоциативный массив данных customer_id и список order_id")
    void tack14() {
        Map<Long, List<Long>> result = orderRepository.findAll().stream()
                .collect(Collectors.groupingBy(
                        order -> order.getCustomer().getId(),
                        Collectors.mapping(Order::getId, Collectors.toList())
                ));

        log.info(result.toString());
    }


    @Test
    @DisplayName("tack15: Получить ассоциативный массив данных с указанием заказа и его общей цены")
    void tack15() {
        Map<Order, Double> result = orderRepository.findAll().stream()
                .collect(Collectors.toMap(
                        order -> order,
                        order -> order.getProducts().stream()
                                .mapToDouble(Product::getPrice)
                                .sum()
                ));

        log.info(result.toString());
    }


    @Test
    @DisplayName("tack16: Получить ассоциативный массив данных с указанием заказа и его общей цены используя reduce")
    void tack16() {
        Map<Long, Double> result = orderRepository.findAll().stream()
                .collect(Collectors.toMap(
                        Order::getId,
                        order -> order.getProducts().stream()
                                .map(Product::getPrice)
                                .reduce(0.0, Double::sum)
                ));

        log.info(result.toString());
    }

    @Test
    @DisplayName("tack17: Получить ассоциативный массив данных названия продукта по категориям")
    void tack17() {
        //Map<String, List<String>> result = null:
        //TODO
        //log.info(result.toString());
        Map<String, List<String>> result = null;
        result = productRepository.findAll().stream()
                .collect(Collectors
                        .groupingBy(Product::getCategory,
                                Collectors.mapping(Product::getName,Collectors.toList())));
        log.info(result.toString());
    }

    @Test
    @DisplayName("tack18: Получить самый дорогой товар в каждой категории")
    void tack18() {
        //Map<String, Optional<Product>> result = null;
        //TODO
        //log.info(result.toString());
        Map<String, Optional<Product>> result = null;
        result = productRepository.findAll().stream()
                .collect(Collectors
                        .groupingBy(Product::getCategory, Collectors.maxBy(Comparator.comparing(Product::getPrice))));
        log.info(result.toString());
    }

    @Test
    @DisplayName("tack19: Получить самый дорогой товар (по наименованию) в каждой категории")
    void tack19() {
        Map<String, String> result = productRepository.findAll().stream()
                .collect(Collectors.groupingBy(
                        Product::getCategory,
                        Collectors.collectingAndThen(
                                Collectors.maxBy(Comparator.comparing(Product::getPrice)),
                                productOptional -> productOptional.map(Product::getName).orElse("Не найдено")
                        )
                ));

        log.info(result.toString());
    }

    @Test
    @DisplayName("tack20: Рассчитайте общую сумму всех заказов за все время")
    void tack20() {

        double result = orderRepository.findAll().stream()
                .mapToDouble(s->s.getProducts().stream().mapToDouble(Product::getPrice).sum()).sum();
        log.info("Общая сумма  = " + result);
    }
}
