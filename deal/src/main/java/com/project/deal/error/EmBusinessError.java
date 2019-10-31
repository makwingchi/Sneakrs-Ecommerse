package com.project.deal.error;

public enum EmBusinessError implements CommonError {
    // Common Error code starts with 1000-
    PARAMETER_VALIDATION_ERROR(10001, "Illegal parameter"),
    UNKNOWN_ERROR(10002, "Unknown error"),

    // User-related error code starts with 2000-
    USER_NOT_EXIST(20001, "User does not exist"),
    USER_LOGIN_FAIL(20002, "Incorrect phone number or password"),
    USER_NOT_LOGIN(20003, "User has not logged in"),

    // Transaction related error code starts with 3000-
    STOCK_NOT_ENOUGH(30001, "Item out of stock"),
    ;

    private int errCode;

    private String errMsg;

    private EmBusinessError(int errCode, String errMsg) {
        this.errCode = errCode;
        this.errMsg = errMsg;
    }

    @Override
    public int getErrCode() {
        return errCode;
    }

    @Override
    public String getErrMsg() {
        return errMsg;
    }

    @Override
    public CommonError setErrMsg(String errMsg) {
        this.errMsg = errMsg;
        return this;
    }
}
