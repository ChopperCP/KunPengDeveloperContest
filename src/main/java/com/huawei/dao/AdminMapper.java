package com.huawei.dao;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    String findpassword(String adminname);

    String updatepassword(@Param("password_hash") String password_hash, @Param("adminname") String adminname);
}
