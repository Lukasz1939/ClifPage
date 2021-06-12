package pl.coderslab.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Proxy;
import org.springframework.stereotype.Component;
import pl.coderslab.entity.Material;

import javax.persistence.*;
import javax.validation.constraints.Pattern;


@Entity
@Getter
@Setter
@Proxy(lazy=false)
public class OrderItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne(fetch = FetchType.EAGER)
    private Material material;
    private double length;
    private double width;
    private double size;
    private double price;
    private double priceWithVAT;
    private int quantity;
    @ManyToOne
    @JoinColumn
    private Order order;


    public OrderItem(){};

    public OrderItem(Material material, int length, int width, int thickness, int quantity, Order order) {
        this.material = material;
        this.length = length;
        this.width = width;
        this.quantity = quantity;
        this.order = order;
    }

    public Long getMaterialId() {
        return this.material.getId();
    }
}
