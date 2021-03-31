package com.huawei.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Record {
    int record_id;
    String wechat_id;
    int port_id;
    Timestamp timestamp;
    String status;
    String real_name;
    String phone_number;
    String description;
}
