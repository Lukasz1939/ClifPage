package pl.coderslab.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Proxy;
import org.hibernate.validator.constraints.pl.NIP;
import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "customers")
@Proxy(lazy=false)
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Email
    private String email;
    @Column(nullable = false, unique = true, length = 60)
    private String login;
    private String password;
    @Pattern(regexp="([0-9]{9})")
    private String phoneNumber;
    private Boolean isCompany;
    private String companyName;
    private String city;
    @Pattern(regexp="([0-9]{2}-[0-9]{3})")
    private String postCode;
    private String street;
    private String streetNumber;
    private String NIP;
    private int enabled;
    @ManyToMany(cascade = {
            CascadeType.MERGE,
            CascadeType.REFRESH
    }, fetch = FetchType.EAGER)
    @JoinTable(name = "customer_role"
            , joinColumns = @JoinColumn(name = "customer_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;


}
