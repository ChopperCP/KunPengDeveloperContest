package com.huawei.service;

import com.huawei.bean.User;

import java.util.List;

public interface UserService {
    int addUser(User user);

    int updateUser(User user);

    User queryUserBywechatid(String wechat_id);

    List<User> queryalluser();

    List<User> queryuserByname(String real_name);
}
