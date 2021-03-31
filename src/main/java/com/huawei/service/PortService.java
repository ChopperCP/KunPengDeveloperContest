package com.huawei.service;

import com.huawei.bean.Port;
import com.huawei.dao.BookMapper;

public interface PortService {
    int addPort(Port port);
    int updatePort(Port port);
    int queryPortidByQRstr(String port_QR_str);
    String queryPortlast(String wechat_id);
}
