package pl.coderslab.Services;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Customer;
import pl.coderslab.entity.Role;
import pl.coderslab.repository.CustomerRepository;
import pl.coderslab.repository.RoleRepository;

import java.util.Arrays;
import java.util.HashSet;

@Service
public class CustomerServiceImplementation implements CustomerService{

    private final CustomerRepository customerRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public CustomerServiceImplementation(CustomerRepository customerRepository, RoleRepository roleRepository, BCryptPasswordEncoder passwordEncoder) {
        this.customerRepository = customerRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public Customer findByLogin(String login) {
        return customerRepository.findByLogin(login);
    }

    @Override
    public void saveCustomer(Customer customer) {
        customer.setPassword(passwordEncoder.encode(customer.getPassword()));
        customer.setEnabled(1);
        Role customerRole = roleRepository.findByName("ROLE_USER");
        customer.setRoles(new HashSet<Role>(Arrays.asList(customerRole)));
        customerRepository.save(customer);
    }
}
