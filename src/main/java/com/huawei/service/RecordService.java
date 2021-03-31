package com.huawei.service;

import com.huawei.bean.Record;
import com.huawei.dao.RecordMapper;

import java.util.List;

public interface RecordService {
    List<Record> queryAllRecord();

    List<Record> queryFullRecord();

    Record queryoneFullRecord(int record_id);

    List<Record> queryRecordBywechatid(String wechat_id);

    List<Record> queryRecordByrealname();

    int updateRecord(Record record);

    int addRecord(Record record);

    List<Record> queryRecordByuser_QR_str(String user_QR_str);
}
