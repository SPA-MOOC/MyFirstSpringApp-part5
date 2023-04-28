package com.example.myfirstspringapp.entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "ITEM", schema = "PUBLIC", catalog = "ESTORE")
@NoArgsConstructor
@Data
public class ItemEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID", nullable = false)
    private int id;
    @Basic
    @Column(name = "NAME", nullable = false, length = 50)
    private String name;
    @Basic
    @Column(name = "PRICE", nullable = false, precision = 0)
    private float price;
//    @Basic
//    @Column(name = "CATEGORY", nullable = false)
//    private int category;
    @ManyToOne
    @JoinColumn(name = "CATEGORY", referencedColumnName = "ID", nullable = false)
    private CategoryEntity categoryByCategory;



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ItemEntity that = (ItemEntity) o;

        if (id != that.id) return false;
       // if (category != that.category) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (price!=that.price) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (0);
        //result = 31 * result + category;
        return result;
    }

    public CategoryEntity getCategoryByCategory() {
        return categoryByCategory;
    }

    public void setCategoryByCategory(CategoryEntity categoryByCategory) {
        this.categoryByCategory = categoryByCategory;
    }
}
