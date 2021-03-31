package com.huawei.service;

import com.huawei.bean.Record;
import com.huawei.dao.RecordMapper;

import java.util.List;

public class RecordServiceImpl implements RecordService {
    RecordMapper recordMapper;

    public void setRecordMapper(RecordMapper recordMapper) {
        this.recordMapper = recordMapper;
    }

    @Override
    public List<Record> queryAllRecord() {
        return recordMapper.queryAllRecord();
    }

    @Override
    public List<Record> queryRecordBywechatid(String wechat_id) {
        return recordMapper.queryRecordBywechatid(wechat_id);
    }

    @Override
    public List<Record> queryRecordByrealname() {
        return recordMapper.queryRecordByrealname();
    }

    @Override
    public int updateRecord(Record record) {
        return recordMapper.updateRecord(record);
    }

    @Override
    public int addRecord(Record record) {
        return recordMapper.addRecord(record);
    }

    @Override
    public List<Record> queryRecordByuser_QR_str(String user_QR_str) {
        return recordMapper.queryRecordByuser_QR_str(user_QR_str);
    }

    @Override
    public List<Record> queryFullRecord() {
        return recordMapper.queryFullRecord();
    }

    @Override
    public Record queryoneFullRecord(int record_id) {
        return recordMapper.queryoneFullRecord(record_id);
    }
}
