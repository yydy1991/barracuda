package com.barracuda.barracudaweixin.service.impl;

import com.barracuda.barracudaweixin.service.LoginService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import javax.annotation.Resource;

@Service
@Slf4j
public class LoginServiceImpl implements LoginService {
    private static final String WECHAT_CODE2SESSION_URL = "https://api.weixin.qq.com/sns/jscode2session";

    @Override
    public String getSessionKeyAndOpenId(String appId, String appSecret, String jsCode) {
        // 构建请求URL
        String url = UriComponentsBuilder.fromHttpUrl(WECHAT_CODE2SESSION_URL)
                .queryParam("appid", appId)
                .queryParam("secret", appSecret)
                .queryParam("js_code", jsCode)
                .queryParam("grant_type", "authorization_code")
                .toUriString();

        // 发送GET请求
        String response = new RestTemplate().getForObject(url, String.class);
        // 会话密钥 session_key 是对用户数据进行 加密签名 的密钥
        log.debug("Response is :" + response);
        // 这里应该解析返回的JSON字符串，但为了简化，这里只返回原始字符串
        // 实际使用中，你可能需要使用Jackson或Gson等库来解析JSON
        return response;
    }
}
