package pl.coderslab.Services;

import pl.coderslab.entity.Customer;

public interface CustomerService {
    Customer findByLogin(String login);
    void saveCustomer(Customer customer);
}
