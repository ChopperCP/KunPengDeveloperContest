package com.huawei.service;

import com.huawei.bean.Port;
import com.huawei.dao.BookMapper;

import java.util.List;

public interface PortService {
    int addPort(Port port);

    int updatePort(Port port);

    int queryPortidByQRstr(String port_QR_str);

    List<Port> quertAllPort();

    Port queryPortById(int port_id);

    int deletePort(int port_id);
}
