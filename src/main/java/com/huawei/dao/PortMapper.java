package com.huawei.dao;

import com.huawei.bean.Port;

import java.util.List;

public interface PortMapper {
    int addPort(Port port);

    int updatePort(Port port);

    int queryPortidByQRstr(String port_QR_str);

    Port queryPortById(int port_id);

    List<Port> quertAllPort();

    int deletePort(int port_id);
}
