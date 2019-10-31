package com.project.deal.service.model;

import java.math.BigDecimal;

// Model used when users create an order
public class OrderModel {

    private String id;

    // User ID
    private Integer userId;

    // Item ID
    private Integer itemId;

    // if not null, it means the user created the order during promotion
    private Integer promoId;

    // Item price; If promoID is not null, it means the item price during promotion
    private BigDecimal itemPrice;

    // Purchase amount
    private Integer amount;

    // Total price for an order (adding different purchased items together);
    // If promoID is not null, it means the item price during promotion
    private BigDecimal orderPrice;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Integer getPromoId() {
        return promoId;
    }

    public void setPromoId(Integer promoId) {
        this.promoId = promoId;
    }
}
