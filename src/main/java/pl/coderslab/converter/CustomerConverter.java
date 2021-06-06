package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.entity.Customer;
import pl.coderslab.repository.CustomerRepository;

public class CustomerConverter implements Converter<String, Customer> {

    @Autowired
    private CustomerRepository customerRepository;
    @Override
    public Customer convert(String id) {
        return customerRepository.getOne(Long.parseLong(id));
    }
}
