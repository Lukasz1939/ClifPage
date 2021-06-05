package pl.coderslab.controller;

import org.hibernate.Hibernate;
import org.hibernate.proxy.HibernateProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Material;
import pl.coderslab.entity.Order;
import pl.coderslab.entity.OrderItem;
import pl.coderslab.repository.CustomerRepository;
import pl.coderslab.repository.MaterialRepository;
import pl.coderslab.repository.OrderItemRepository;
import pl.coderslab.repository.OrderRepository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;


@Transactional
@Controller
@RequestMapping("/order")
public class OrderController {
    private OrderRepository orderRepository;
    private MaterialRepository materialRepository;
    private CustomerRepository customerRepository;
    private OrderItemRepository orderItemRepository;

    public OrderController(OrderRepository orderRepository, MaterialRepository materialRepository, CustomerRepository customerRepository,OrderItemRepository orderItemRepository) {
        this.orderRepository = orderRepository;
        this.materialRepository = materialRepository;
        this.customerRepository = customerRepository;
        this.orderItemRepository = orderItemRepository;
    }





    @GetMapping("/orderList")
    public String orderList(){
        return "order/list";
    }

    @GetMapping("/delete")
    public String deleteOrder(Model model){
        model.addAttribute("orderItem", new OrderItem());
        return "order/itemForm";
    }
    @Transactional
    @GetMapping("/editOrder/{id}")
    public String addItem(@PathVariable Long id, Model model){
        Order order = orderRepository.getOne(id);
        OrderItem orderItem = new OrderItem();
        orderItem.setOrder(order);
        model.addAttribute("orderItem", orderItem);
        return "order/itemForm";
    }

    @Transactional
    @GetMapping("/addOrder")
    public String addOrder(Model model){
        model.addAttribute("order", new Order());
        return "order/itemForm";
    }

    @Transactional
    @PostMapping("/editOrder")
    @ResponseBody
    public String addItemPost(@ModelAttribute OrderItem item ){
        item.setSize(item.getWidth() * item.getLength());
        Long materialId = item.getMaterialId();
        Optional<Material> optional = materialRepository.findById(materialId);
        Material material = optional.get();
        int price = material.getPrice();
        item.setPrice(price*item.getSize());
        orderItemRepository.save(item);
        return material.toString();
    }

    @ModelAttribute("orders")
    public List<Order> orders(){
        return orderRepository.findAll();
    }
    @ModelAttribute("materials")
    public List<Material> materials(){
    return materialRepository.findAll();
    }

}
