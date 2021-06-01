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
    @OneToOne
    private Material material;
    private int length;
    private int width;
    private int thickness;
    private float size;
    private float price;
    private int quantity;
    @ManyToOne
    private Order order;



    public OrderItem() {
    }

    public OrderItem(Material material, int length, int width, int thickness, int quantity) {
        this.material = material;
        this.length = length;
        this.width = width;
        this.size = width * length;
        this.thickness = thickness;
        if(thickness == 2 ){
            this.price = size * material.getPrice2cm();
        }else if(thickness == 3 ){
            this.price = size * material.getPrice3cm();
        }
        this.quantity = quantity;
    }

}
