package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.entity.Order;
import pl.coderslab.entity.OrderItem;
import pl.coderslab.repository.OrderItemRepository;
import pl.coderslab.repository.OrderRepository;

public class OrderItemConverter implements Converter<String, OrderItem> {

    @Autowired
    private OrderItemRepository orderItemRepository;
    @Override
    public OrderItem convert(String id) {
        return orderItemRepository.getOne(Long.parseLong(id));
    }
}