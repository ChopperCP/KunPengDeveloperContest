package com.huawei.service;

import com.huawei.bean.User;
import com.huawei.dao.UserMapper;

public class UserServiceImpl implements UserService {
    UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public User queryUserBywechatid(String wechat_id) {
        return userMapper.queryUserBywechatid(wechat_id);
    }
}
