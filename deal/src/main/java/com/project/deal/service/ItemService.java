package com.project.deal.service;

import com.project.deal.error.BusinessException;
import com.project.deal.service.model.ItemModel;

import java.util.List;

public interface ItemService {

    // Create an item
    ItemModel createItem(ItemModel itemModel) throws BusinessException;

    // A list of items
    List<ItemModel> listItem();

    // Product detail
    ItemModel getItemById(Integer id);

    // Decrease stock when a user purchases an item
    boolean decreaseStock(Integer itemId, Integer amount) throws BusinessException;

    // Increase sales when a user purchases an item
    void increaseSales(Integer itemId, Integer amount) throws BusinessException;
}
