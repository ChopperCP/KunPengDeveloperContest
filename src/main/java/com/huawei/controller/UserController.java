package com.huawei.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.huawei.bean.User;
import com.huawei.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/addUser")
    public String addUser(User user) throws JsonProcessingException {
        userService.addUser(user);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(user);
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user) throws JsonProcessingException {
        userService.updateUser(user);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(user);
    }
    @RequestMapping("/queryUserBywechatid")
    public String queryUserBywechatid(String wechat_id) throws JsonProcessingException {
        User user = userService.queryUserBywechatid(wechat_id);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(user);
    }

}
