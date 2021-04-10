Port

添加

http://124.71.60.210:8080/port/addPort?longitude=x&latitude=x&port_QR_str_in=x&port_QR_str_out=x&description=x

修改

http://124.71.60.210:8080/port/updatePort?longitude=x&latitude=x&port_QR_str_in=x&port_QR_str_out=x&description=x

User

修改

http://124.71.60.210:8080/user/updateUser?wechat_id=1112&privilege=33333&user_QR_str=2323232&phone_number=2&real_name=yes

添加

http://124.71.60.210:8080/user/addUser?wechat_id=1112&privilege=33333&user_QR_str=2323232&phone_number=2&real_name=yes



按id查询

http://124.71.60.210:8080/user/queryUserBywechatid?wechat_id=1112

Record

查询所有记录

http://124.71.60.210:8080/record/queryAllRecord

按wxid查询记录

http://124.71.60.210:8080/record/queryRecordBywechatid?wechat_id=x

更新记录

http://124.71.60.210:8080/record/updateRecord?record_id=x&wechat_id=x&port_id=x&timestamp=x&status=x

添加纪录

http://124.71.60.210:8080/record/updateRecord?wechat_id=x&port_id=x&status=x

按二维码查询记录

http://124.71.60.210:8080/record/queryRecordByuser_QR_str?user_QR_str=ChopperCP%20QR%20STR

按二维码查看完整记录

http://124.71.60.210:8080/record/queryFullRecordByuser_QR_str?user_QR_str=0HM4322TetOf4NEe1K6NwvDALq3ftStD4SyuS9ZW7cUEk7565EpXkY2O2R5L56onQlo2XxBiV1LZuoywm52mMuhCCjbVWLrWudRs

按id完整记录

http://124.71.60.210:8080/record/queryFullRecordBywechatid/record/queryFullRecordBywechatid?wechat_id=?

扫码添加纪录

http://124.71.60.210:8080/record/addRecordByQR_str/?port_QR_str=IN_QR_STR&wechat_id=o3l265NSXPVCxYetbWHTtM3bDV6

