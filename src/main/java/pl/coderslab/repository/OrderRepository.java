package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
}
