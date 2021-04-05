package com.huawei.dao;

import com.huawei.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int addUser(User user);

    int updateUser(User user);

    List<User> queryalluser();

    List<User> queryuserByname(String real_name);

    User queryUserBywechatid(String wechat_id);
}
