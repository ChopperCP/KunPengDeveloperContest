package com.huawei.service;

public interface AdminService {
    String findpassword(String adminname);

    String updatepassword(String password_hash, String adminname);
}
