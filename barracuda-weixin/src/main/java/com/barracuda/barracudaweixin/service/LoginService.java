package com.barracuda.barracudaweixin.service;

public interface LoginService {
    String getSessionKeyAndOpenId(String appId, String appSecret, String jsCode);
}
