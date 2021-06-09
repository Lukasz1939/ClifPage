package pl.coderslab.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.Services.CustomerService;
import pl.coderslab.entity.Customer;
import pl.coderslab.repository.CustomerRepository;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/login")
public class LoginController {
    private CustomerRepository customerRepository;
    private final CustomerService customerService;

    public LoginController(CustomerRepository customerRepository, CustomerService customerService){
        this.customerRepository = customerRepository;
        this.customerService = customerService;
    }

    @GetMapping("/login")
    public String login(){
        return "login/login";
    }

    @PostMapping("/login")
    public String main(){return "redirect:../"; }

    @GetMapping("/logout")
    public String logout(){
        return "login/logout";
    }

    @PostMapping("/logout")
    public String logoutPost(){
        return "";
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
        customerService.saveCustomer(customer);
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
