package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Customer;
import pl.coderslab.repository.CustomerRepository;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/login")
public class LoginController {
    private CustomerRepository customerRepository;

    public LoginController(CustomerRepository customerRepository){
        this.customerRepository = customerRepository;
    }

    @GetMapping("/login")
    public String home(){
        return "login/login";
    }

    @Transactional
    @GetMapping("/newAccount")
    public String addCustomer(Model model){
        model.addAttribute("customer", new Customer());
        return "login/customerForm";
    }

    @Transactional
    @PostMapping("/newAccount")
    public String addCustomerPost(@Valid Customer customer, BindingResult result){
        if(result.hasErrors()){
            return "redirect:../login/error";
        }
        customerRepository.save(customer);
        return "redirect:../login/login";
    }

    @GetMapping("/error")
    public String error(){
        return "login/invalidData";
    }

    @ModelAttribute("customers")
    public List<Customer> customers(){
        return customerRepository.findAll();
    }
}
