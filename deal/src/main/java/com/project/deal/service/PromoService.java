package com.project.deal.service;


import com.project.deal.service.model.PromoModel;

public interface PromoService {

    // Get promotion according to item ID
    PromoModel getPromoByItemId(Integer itemId);

    // Announce promotion
    void publishPromo(Integer promoId);
}
