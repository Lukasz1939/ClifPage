package pl.coderslab.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Component;
import pl.coderslab.entity.Material;

import javax.persistence.*;


@Entity
@Getter
@Setter
public class OrderItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne(fetch = FetchType.EAGER)
    private Material material;
    private float length;
    private float width;
    private float size;
    private float price;
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
