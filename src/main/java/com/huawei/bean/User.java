package com.huawei.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    String wechat_id;
    String privilege;
    String user_QR_str;
    String phone_number;
    String real_name;
}
