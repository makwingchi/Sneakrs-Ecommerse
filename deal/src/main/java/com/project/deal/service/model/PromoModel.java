package com.project.deal.service.model;


import org.joda.time.DateTime;

import javax.xml.crypto.Data;
import java.io.Serializable;
import java.math.BigDecimal;

public class PromoModel implements Serializable {

    private Integer id;

    // Promo status: 1: has not yet begun; 2: ongoing; 3: has ended
    private Integer status;

    // Promotion name
    private String promoName;

    // Start date of promotion
    private DateTime startDate;

    private DateTime endDate;

    // Item id for item which is in promotion
    private Integer itemId;

    // Item price during promotion
    private BigDecimal promoItemPrice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPromoName() {
        return promoName;
    }

    public void setPromoName(String promoName) {
        this.promoName = promoName;
    }

    public DateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(DateTime startDate) {
        this.startDate = startDate;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public BigDecimal getPromoItemPrice() {
        return promoItemPrice;
    }

    public void setPromoItemPrice(BigDecimal promoItemPrice) {
        this.promoItemPrice = promoItemPrice;
    }

    public DateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(DateTime endDate) {
        this.endDate = endDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
