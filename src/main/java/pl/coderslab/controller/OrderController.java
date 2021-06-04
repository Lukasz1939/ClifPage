package pl.coderslab.controller;

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
    public String addItem( Model model){
        model.addAttribute("orderItem", new OrderItem());
        return "order/itemForm";
    }
//    Optional<Order> order = orderRepository.findById(id);
//    @PathVariable long id
    @Transactional
    @PostMapping("/editOrder/{id}")
    public String addItemPost(@PathVariable Long id, @ModelAttribute OrderItem item){
        Optional<Order> order = orderRepository.findById(id);
        Order toAdd = order.get();
        toAdd.addItem(item);
        orderItemRepository.save(item);
        return "order/list";
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
