package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Material;
import pl.coderslab.entity.Order;
import pl.coderslab.entity.OrderItem;
import pl.coderslab.repository.CustomerRepository;
import pl.coderslab.repository.MaterialRepository;
import pl.coderslab.repository.OrderRepository;

import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    private OrderRepository orderRepository;

    public OrderController(OrderRepository orderRepository, MaterialRepository materialRepository, CustomerRepository customerRepository) {
        this.orderRepository = orderRepository;
        this.materialRepository = materialRepository;
        this.customerRepository = customerRepository;
    }

    private MaterialRepository materialRepository;
    private CustomerRepository customerRepository;




    @GetMapping("/orderList")
    public String orderList(){
        return "order/list";
    }

    @GetMapping("/editOrder/{id}")
    public String addItem(Model model){
        model.addAttribute("orderItem", new OrderItem());
        return "order/itemForm";
    }
//    @PostMapping("/newOrderItem")
//    public String addItemPost(@ModelAttribute OrderItem item, Model model){
//
//    }

    @ModelAttribute("orders")
    public List<Order> orders(){
        return orderRepository.findAll();
    }
    @ModelAttribute("materials")
    public List<Material> materials(){
    return materialRepository.findAll();
    }
}
