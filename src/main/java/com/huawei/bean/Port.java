package com.huawei.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Port {
    int port_id;
    double longitude;
    double latitude;
    String port_QR_str_in;
    String port_QR_str_out;
    String description;

}
