package com.project.deal.service.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;

public class ItemModel implements Serializable {

    private Integer id;

    // Item name
    @NotBlank(message = "title cannot be null")
    private String title;

    // Item title
    @NotNull(message = "price cannot be null")
    @Min(value = 0, message = "price must be greater than 0")
    private BigDecimal price;

    // Item stock
    @NotNull(message = "stock cannot be null")
    private Integer stock;

    @NotBlank(message = "description cannot be null")
    private String description;

    // Item sales
    private Integer sales;

    // Item image url
    @NotBlank(message = "image information cannot be null")
    private String imgUrl;

    // if promoModel is not null, it means there is ongoing or future promotion
    private PromoModel promoModel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public PromoModel getPromoModel() {
        return promoModel;
    }

    public void setPromoModel(PromoModel promoModel) {
        this.promoModel = promoModel;
    }
}
