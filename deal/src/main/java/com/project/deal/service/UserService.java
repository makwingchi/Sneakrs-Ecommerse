package com.project.deal.service;


import com.project.deal.dataobject.UserDO;
import com.project.deal.error.BusinessException;
import com.project.deal.service.model.UserModel;

public interface UserService {

    // Get user model through ID
    UserModel getUserById(Integer id);

    void register(UserModel userModel) throws BusinessException;

    // phone: the phone number a particular user uses to register; password: encrypted password

    UserModel validateLogin(String phone, String encrptPassword) throws BusinessException;

    boolean checkPhone(String phone);
}
