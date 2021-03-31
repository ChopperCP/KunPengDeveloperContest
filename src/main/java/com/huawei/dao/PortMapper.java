package com.huawei.dao;

import com.huawei.bean.Port;

public interface PortMapper {
    int addPort(Port port);
    int updatePort(Port port);
    int queryPortidByQRstr(String port_QR_str);
    String queryPortlast(String wechat_id);
}
