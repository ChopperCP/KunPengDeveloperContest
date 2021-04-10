package com.huawei.service;

import com.huawei.dao.AdminMapper;

public class AdminServiceImpl implements AdminService {
    AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    public String findpassword(String adminname) {
        return adminMapper.findpassword(adminname);
    }

    public String updatepassword(String password_hash, String adminname) {
        return adminMapper.updatepassword(password_hash, adminname);
    }
}
