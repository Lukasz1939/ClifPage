package pl.coderslab.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Customer;

import java.util.HashSet;
import java.util.Set;

@Service
public class SpringDataUserDetailsService implements UserDetailsService {
    private CustomerService customerService;

    @Autowired
    public void setCustomerRepository(CustomerService customerService){
        this.customerService = customerService;
    }
    @Override
    public UserDetails loadUserByUsername(String login) {
        final Customer user = customerService.findByLogin(login);
        if (user == null) {throw new UsernameNotFoundException(login); }
        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        user.getRoles().forEach(r ->
                grantedAuthorities.add(new SimpleGrantedAuthority(r.getName())));
        return new CurrentUser(user.getLogin(), user.getPassword(), grantedAuthorities, user);
//        UserDetails userDetails = User.withUsername(user.getEmail())
//                .password(user.getPassword())
//                .authorities("USER").build();
//        return userDetails;
    } 
}
