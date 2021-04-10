package com.huawei.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.huawei.bean.Record;
import com.huawei.dao.RecordMapper;
import com.huawei.service.PortService;
import com.huawei.service.RecordService;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/record")
public class RecordController {
    @Autowired
    @Qualifier("RecordServiceImpl")
    private RecordService recordService;

    @Autowired
    @Qualifier("PortServiceImpl")
    private PortService portService;


    @RequestMapping("/queryAllRecord")
    String queryAllRecord() throws JsonProcessingException {
        List<Record> records = recordService.queryAllRecord();
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(records);
    }

    @RequestMapping("/queryRecordBywechatid")
    String queryRecordBywechatid(String wechat_id) throws JsonProcessingException {
        List<Record> records = recordService.queryRecordBywechatid(wechat_id);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(records);
    }

    @RequestMapping("/queryFullRecordBywechatid")
    String queryFullRecordBywechatid(String wechat_id) throws JsonProcessingException {
        List<Record> records = recordService.queryFullRecordBywechatid(wechat_id);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(records);
    }


    @RequestMapping("/updateRecord")
    String updateRecord(Record record) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(recordService.updateRecord(record));
    }

    @RequestMapping("/addRecord")
    String addRecord(Record record) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(recordService.addRecord(record));
    }

    @RequestMapping("/queryRecordByuser_QR_str")
    String queryRecordByuser_QR_str(String user_QR_str) throws JsonProcessingException {
        List<Record> records = recordService.queryRecordByuser_QR_str(user_QR_str);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(records);
    }

    @RequestMapping("/queryFullRecordByuser_QR_str")
    String queryFullRecordByuser_QR_str(String user_QR_str) throws JsonProcessingException {
        List<Record> records = recordService.queryFullRecordByuser_QR_str(user_QR_str);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(records);
    }

    @RequestMapping("/addRecordByQR_str")
    String addRecordByQR_str(String port_QR_str, String wechat_id) throws JsonProcessingException {
        int port_id = portService.queryPortidByQRstr(port_QR_str);
        String status = recordService.queryRecordlast(wechat_id);
        String new_status = "ERROR";

        if (port_QR_str.contains("OUT")) {
            if (status != null && status.contains("IN") && !status.contains("ERROR")) new_status = "OUT_NORMAL";
            else new_status = "OUT_ERROR";
        } else if (port_QR_str.contains("IN")) {
            if (status == null || (status.contains("OUT") && !status.contains("ERROR"))) new_status = "IN_NORMAL";
            else new_status = "IN_ERROR";
        }
        Record record = new Record();
        record.setPort_id(port_id);
        record.setStatus(new_status);
        record.setWechat_id(wechat_id);
        recordService.addRecord(record);
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(record);
    }

}
