package pl.coderslab.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.Services.CustomerService;
import pl.coderslab.entity.Customer;
import pl.coderslab.repository.CustomerRepository;



import org.springframework.security.crypto.bcrypt.BCrypt;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/login")
public class LoginController {
    private CustomerRepository customerRepository;
    private final CustomerService customerService;
    private final BCryptPasswordEncoder passwordEncoder;
    private final BCrypt bCrypt;

    public LoginController(CustomerRepository customerRepository, CustomerService customerService, BCryptPasswordEncoder passwordEncoder, BCrypt bCrypt){
        this.customerRepository = customerRepository;
        this.customerService = customerService;
        this.passwordEncoder = passwordEncoder;
        this.bCrypt = bCrypt;
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
        return "redirect:../";
    }

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

    @GetMapping("editAcc")
    public String editAcc(@AuthenticationPrincipal UserDetails customUser, Model model){
        Customer toEdit = customerRepository.findByLogin(customUser.getUsername());
        toEdit.setPassword(passwordEncoder.encode(toEdit.getPassword()));
        model.addAttribute("customer", toEdit);
        return "login/customerForm";
    }

    @PostMapping("editAcc")
    public String editAccPost(@Valid Customer customer, BindingResult result){
        if(result.hasErrors()){
            return "redirect:../login/error";
        }
        String pass = bCrypt.hashpw(customer.getPassword(), bCrypt.gensalt());
        customer.setPassword(pass);
        customerRepository.save(customer);
        return "redirect:../order/orderList";
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
