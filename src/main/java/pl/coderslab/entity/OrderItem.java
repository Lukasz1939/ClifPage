package pl.coderslab.models;

import org.springframework.stereotype.Component;
import pl.coderslab.entity.Material;


@Component
public class OrderItem {
    private Material material;
    private int length;
    private int width;
    private float size;
    private float price;


    public OrderItem() {
    }

    public OrderItem(Material material, int length, int width) {
        this.material = material;
        this.length = length;
        this.width = width;
        this.size = width * length;
        this.price = size * material.getPrice();
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public float getSize() {
        return size;
    }

    public void setSize(float size) {
        this.size = size;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
