package com.barracuda.barracudaweixin.service.impl;

import com.barracuda.barracudaweixin.service.WeiXinService;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class WeiXinServiceImpl implements WeiXinService {
    @Override
    public String getAppSecret(String appId) {
        String result = "";
        if (Objects.equals(appId, "wx7bae24da47efc5f4")){
            result = "43dc26c2e5b5b6ec13d3fe18ea2f3476";
        }
        return result;
    }
}
