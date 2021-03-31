package com.huawei.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.huawei.bean.Port;
import com.huawei.service.PortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/port")
public class PortController {
    @Autowired
    @Qualifier("PortServiceImpl")
    private PortService portService;

    @RequestMapping("/addPort")
    public String addPort(Port port) throws JsonProcessingException {
        portService.addPort(port);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(port);
    }
    @RequestMapping("/updatePort")
    public String updatePort(Port port) throws JsonProcessingException {
        portService.updatePort(port);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(port);
    }
}
