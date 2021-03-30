// pages/main/main.js
var QRCode = require('../../utils/weapp-qrcode.js')

Page({
    data: {
        text: ' ',
        image: '',
        userIdentity: 'employee',
        qrText: '',
        isLogin: false,
        wechat_id: '',
    },
    onLoad: function (options) {


        wx.login({
            success: (res) => {
                if (res.code) {
                    //发起网络请求
                    console.log(res.code);
                    wx.request({
                        url: 'https://fxlkt.com/huawei/user/queryUserBywechatid',
                        data: {
                            // wechat_id: res.code
                            // DEBUG
                            // employee
                            // wechat_id: '063Av0Ga1X8XLA0BMhGa1QCvgB2Av0GA'
                            // admin
                            wechat_id: '2424242a1X8XLA0BMhGa1QCvgB2Av0GA'
                        },
                        success: (backstage_res) => {
                            // 取得用户身份
                            let data = backstage_res.data;
                            console.log(data);
                            if (data != null) {
                                console.log(data);
                                this.setData(
                                    {
                                        userIdentity: data.privilege,
                                        qrText: data.user_QR_str,
                                        isLogin: true,
                                        wechat_id: res.code,
                                    }
                                );
                                console.log(this.data);
                                // 展示二维码
                                let qrcode = new QRCode('canvas', {
                                    // usingIn: this,
                                    text: this.data.qrText,
                                    // image:'/images/bg.jpg',
                                    width: 150,
                                    height: 150,
                                    colorDark: "#1CA4FC",
                                    colorLight: "white",
                                    correctLevel: QRCode.CorrectLevel.H,
                                });
                            }
                            else {
                                wx.showToast({
                                    title: '查询记录失败',
                                    icon: 'error',
                                })
                            }
                        },
                        fail: (backstage_res) => {
                            wx.showToast({
                                title: '远端服务器出错',
                                icon: 'error',
                            })
                        },
                    });


                } else {
                    wx.showToast({
                        title: '登录失败',
                        icon: 'error',
                    })
                }
            }
        })
    },
    confirmHandler: function (e) {
        var value = e.detail.value
        qrcode.makeCode(value)
    },
    inputHandler: function (e) {
        var value = e.detail.value
        this.setData({
            text: value
        })
    },
    show_self_records: function () {
        // 查看自己的出入记录
        wx.request({
            url: 'https://fxlkt.com/huawei/record/queryRecordBywechatid',
            data: {
                // wechat_id: this.data.wechat_id,
                // DEBUG
                wechat_id: '063Av0Ga1X8XLA0BMhGa1QCvgB2Av0GA',
            },
            success: (res) => {
                console.log(res.data);
                wx.redirectTo({
                    url: '/pages/show_records?record=' + JSON.stringify(res.data),
                });

            },
        })
    },
    qrscan_get_records: function () {
        // 扫码查看他人的出入记录
        let qrText = '';
        qrText = wx.scanCode({
            onlyFromCamera: false,
        });
        if (qrText != '') {
            wx.request({
                url: 'https://fxlkt.com/huawei/user/queryUserByQRstr',
                data: {
                    user_QR_Str: qrText,
                },
                success: (res) => {
                    // 取得用户身份
                    let data = backstage_res.data;
                    console.log(data);
                    if (data != null) {
                        wx.redirectTo({
                            url: '/pages/show_records/show_records?record=' + JSON.stringify(res.data),
                        })
                    }
                    else {
                        wx.showToast({
                            title: '查询记录失败',
                            icon: 'error',
                        })
                    }
                },
                fail: (backstage_res) => {
                    wx.showToast({
                        title: '远端服务器出错',
                        icon: 'error',
                    })
                },
            });
        }
        else {
            wx.showToast({
                title: '扫码失败',
                icon: 'error',
            })
        }
    },
})