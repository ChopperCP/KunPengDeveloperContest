package com.huawei.service;

import com.huawei.bean.Port;
import com.huawei.bean.Record;
import com.huawei.dao.PortMapper;

import java.util.List;

public class PortServiceImpl implements PortService {
    private PortMapper portMapper;

    public void setPortMapper(PortMapper portMapper) {
        this.portMapper = portMapper;
    }

    public int addPort(Port port) {
        return portMapper.addPort(port);
    }

    public int updatePort(Port port) {
        return portMapper.updatePort(port);
    }

    public int queryPortidByQRstr(String port_QR_str) {
        return portMapper.queryPortidByQRstr(port_QR_str);
    }

    public List<Port> quertAllPort() {
        return portMapper.quertAllPort();
    }

    public Port queryPortById(int port_id) {
        return portMapper.queryPortById(port_id);
    }

    public int deletePort(int port_id) {
        return portMapper.deletePort(port_id);
    }
}
