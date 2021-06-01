package pl.coderslab.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Table(name = "customers")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String companyName;
    private String login;
    private String password;
    private String city;
    private String street;
    private Long streetNumber;

}
