package pl.coderslab.Services;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

public class CurrentUser extends User {
    private final pl.coderslab.entity.Customer user;
    public CurrentUser(String username, String password, Collection<? extends GrantedAuthority> authorities, pl.coderslab.entity.Customer user) {
        super(username, password, authorities);
        this.user = user;
    }
    public pl.coderslab.entity.Customer getUser(){return user;}
}
