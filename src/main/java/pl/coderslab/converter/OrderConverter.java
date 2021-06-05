package pl.coderslab.converter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.entity.Material;
import pl.coderslab.entity.Order;
import pl.coderslab.repository.MaterialRepository;
import pl.coderslab.repository.OrderRepository;

public class OrderConverter implements Converter<String, Order> {

    @Autowired
    private OrderRepository orderRepository;
    @Override
    public Order convert(String id) {
        return orderRepository.getOne(Long.parseLong(id));
    }
}