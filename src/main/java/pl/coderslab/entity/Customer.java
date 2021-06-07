package pl.coderslab.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "customers")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String email;
    @Column(nullable = false, unique = true, length = 60)
    private String login;
    private String password;
    @Column(nullable = true)
    private String companyName;
    private String city;
    private String postCode;
    private String street;
    private Long streetNumber;
    @Column(nullable = true)
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
