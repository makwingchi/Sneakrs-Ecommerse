package com.project.deal.controller;

import com.project.deal.controller.viewobject.UserVO;
import com.project.deal.error.BusinessException;
import com.project.deal.error.EmBusinessError;
import com.project.deal.response.CommonReturnType;
import com.project.deal.service.UserService;
import com.project.deal.service.model.UserModel;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Base64;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping("/user")
@CrossOrigin(allowCredentials = "true", allowedHeaders = "*")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private HttpServletRequest httpServletRequest;

    @Autowired
    private RedisTemplate redisTemplate;

    // User Login
    @RequestMapping(value = "/login", method = {RequestMethod.POST}, consumes = {CONTENT_TYPE_FORMED})
    @ResponseBody
    public CommonReturnType login(@RequestParam(name="phone") String phone,
                                  @RequestParam(name="password") String password) throws BusinessException {
        // Basic check to input parameters
        if (StringUtils.isEmpty(phone) || StringUtils.isEmpty(password)) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR, "input cannot be null");
        }

        // Check if the user's telephone number matches the password input
        UserModel userModel = userService.validateLogin(phone, this.EncodeByMd5(password));

        // Add corresponding attributes to session
        // this.httpServletRequest.getSession().setAttribute("IS_LOGIN", true);
        // this.httpServletRequest.getSession().setAttribute("LOGIN_USER", userModel);

        // When user logs in, we put their token into redis
        String uuidToken = UUID.randomUUID().toString();
        uuidToken = uuidToken.replace("-", "");

        // connect token and login status
        redisTemplate.opsForValue().set(uuidToken, userModel);
        redisTemplate.expire(uuidToken, 1, TimeUnit.HOURS);

        return CommonReturnType.create(uuidToken);
    }

    // User register
    @RequestMapping(value = "/register", method = {RequestMethod.POST}, consumes = {CONTENT_TYPE_FORMED})
    @ResponseBody
    public CommonReturnType register(@RequestParam(name="phone") String phone,
                                     @RequestParam(name="otpCode") String otpCode,
                                     @RequestParam(name="name") String name,
                                     @RequestParam(name="gender") Integer gender,
                                     @RequestParam(name="age") Integer age,
                                     @RequestParam(name="password") String password) throws BusinessException {

        // Check if telephone number matches otp code
        // String inSessionOtpCode = (String) this.httpServletRequest.getSession().getAttribute(phone);
        String inSessionOtpCode = (String) redisTemplate.opsForValue().get(phone);
        System.out.println(inSessionOtpCode);
        if (!com.alibaba.druid.util.StringUtils.equals(otpCode, inSessionOtpCode)) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR, "OTP does not match.");
        }
        // Register the user
        UserModel userModel = new UserModel();
        userModel.setName(name);
        userModel.setGender(Byte.valueOf(String.valueOf(gender.intValue())));
        userModel.setAge(age);
        userModel.setPhone(phone);
        userModel.setRegisterMode("byphone");
        userModel.setEncrptPassword(this.EncodeByMd5(password));

        userService.register(userModel);

        return CommonReturnType.create(null);
    }

    public String EncodeByMd5(String str) {
        String encodedString = Base64.getEncoder().encodeToString(str.getBytes());
        return encodedString;
    }

    // User get OTP
    @RequestMapping(value = "/getotp", method = {RequestMethod.POST}, consumes = {CONTENT_TYPE_FORMED})
    @ResponseBody
    public CommonReturnType getOtp(@RequestParam(name="phone") String phone) throws BusinessException {
        if (userService.checkPhone(phone)) {
            throw new BusinessException(EmBusinessError.PARAMETER_VALIDATION_ERROR, "This phone number has already been registered");
        }

        // Generate the OTP
        Random random = new Random();
        int randomInt = random.nextInt(99999) + 10000;
        String otpCode = String.valueOf(randomInt);

        // phone number <-> OTP
        // httpServletRequest.getSession().setAttribute(phone, otpCode);
        redisTemplate.opsForValue().set(phone, otpCode);
        redisTemplate.expire(phone, 1, TimeUnit.MINUTES);

        // Send OTP to user's mobile (omitted here)
        // System.out.println("telephone: " + phone + ", OTPCode: "+ otpCode);

        return CommonReturnType.create(otpCode);
    }

    @RequestMapping("/get")
    @ResponseBody
    public CommonReturnType getUser(@RequestParam(name="id") Integer id) throws BusinessException {
        // Get user model with the corresponding ID
        UserModel userModel = userService.getUserById(id);

        // If user does not exist, return a customized error message
        if (userModel == null) {
            throw new BusinessException(EmBusinessError.USER_NOT_EXIST);
        }

        // Convert user model to user vo
        UserVO userVO = convertFromModel(userModel);

        return CommonReturnType.create(userVO);
    }

    private UserVO convertFromModel(UserModel userModel) {
        if (userModel == null) {
            return null;
        }
        UserVO userVO = new UserVO();
        BeanUtils.copyProperties(userModel, userVO);
        return userVO;
    }
}
