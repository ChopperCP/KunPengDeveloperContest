package com.huawei.service;

import com.huawei.bean.User;

public interface UserService {
    int addUser(User user);
    int updateUser(User user);
    User queryUserBywechatid(String wechat_id);
}
