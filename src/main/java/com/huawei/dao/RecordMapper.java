package com.huawei.dao;

import com.huawei.bean.Record;

import java.util.List;
import java.util.Map;

public interface RecordMapper {
    List<Record> queryAllRecord();

    List<Record> queryFullRecord();

    Record queryoneFullRecord(int record_id);

    List<Record> queryRecordBywechatid(String wechat_id);

    List<Record> queryRecordByrealname();

    int updateRecord(Record record);

    int addRecord(Record record);

    List<Record> queryRecordByuser_QR_str(String user_QR_str);

    int addRecordByQR_str(Map<String, Object> map);
}
