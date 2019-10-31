package com.project.deal.service;

import com.project.deal.error.BusinessException;
import com.project.deal.service.model.OrderModel;

public interface OrderService {

    // There are two normal ways to do this:
    // 1. Promo ID will be sent back from frontend, and then we will check whether the id matches our item's ID, and whether the promotion has begun
    // 2. Check whether the item participates in the promotion; if so, create order based on the promotion price
    OrderModel createOrder(Integer userId, Integer itemId, Integer promoId, Integer amount) throws BusinessException;
}
