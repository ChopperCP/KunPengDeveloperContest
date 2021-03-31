package com.huawei.dao;

import com.huawei.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int addUser(User user);
    int updateUser(User user);
    User queryUserBywechatid(String wechat_id);
}
