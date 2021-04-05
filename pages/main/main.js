// pages/main/main.js
var QRCode = require('../../utils/weapp-qrcode.js')

Page({
    data: {
        text: ' ',
        image: '',
        userIdentity: 'employee',
        qrText: '',
        wechat_id: '',
    },
    onLoad: function (options) {
        if (this.data.qrText == '') {
            wx.login({
                success: (res) => {
                    if (res.code) {
                        // 发起网络请求
                        console.log(res.code);
                        // 利用云函数换取openid
                        wx.cloud.callFunction({
                            name: 'getOpenid',
                            success: (res) => {
                                this.setData(
                                    {
                                        wechat_id: res.result.OPENID,
                                    }
                                )
                                console.log(this.data.wechat_id);
                                // 查询用户的身份和二维码字符串
                                wx.request({
                                    url: 'https://fxlkt.com/user/queryUserBywechatid',
                                    data: {
                                        // wechat_id: this.data.wechat_id
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
                                                }
                                            );
                                            console.log(this.data);
                                        }
                                        else {
                                            // 未登录，注册
                                            wx.redirectTo({
                                                url: '/pages/register/register?wechat_id=' + this.data.wechat_id,
                                            });
                                        }
                                        // 展示二维码(异步)
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
                                    },
                                    fail: (backstage_res) => {
                                        wx.showToast({
                                            title: '远端服务器出错',
                                            icon: 'error',
                                        })
                                    },
                                });
                            },
                            complete: (res) => {
                                console.log('callFunction getOpenID result: ', res)
                            }
                        });
                    } else {
                        wx.showToast({
                            title: '登录失败',
                            icon: 'error',
                        })
                    }
                }
            })
        }

        // 已登录
        // 展示二维码(异步)
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
            url: 'https://fxlkt.com/record/queryRecordBywechatid',
            data: {
                wechat_id: this.data.wechat_id,
                // DEBUG
                // wechat_id: '063Av0Ga1X8XLA0BMhGa1QCvgB2Av0GA',
            },
            success: (res) => {
                console.log(res.data);
                if (res.data.length != 0) {
                    wx.redirectTo({
                        url: '/pages/show_records/show_records?record=' + JSON.stringify(res.data),
                    });
                }
                else {
                    wx.showToast({
                        title: '无记录',
                        icon: 'error',
                    })
                }
            },
        })
    },
    qrscan_get_records: function () {
        // 扫码查看他人的出入记录
        wx.scanCode({
            onlyFromCamera: false,
            success: (res) => {
                console.log(res);
                wx.request({
                    url: 'https://fxlkt.com/record/queryFullRecordByuser_QR_str',
                    data: {
                        user_QR_str: res.result,
                    },
                    success: (backstage_res) => {
                        // 取得用户身份
                        let data = backstage_res.data;
                        console.log(data);
                        if (data != null) {
                            wx.redirectTo({
                                url: '/pages/show_records/show_records?record=' + JSON.stringify(backstage_res.data),
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
            },
            fail: (res) => {
                wx.showToast({
                    title: '扫码失败',
                    icon: 'error',
                })
            }
        });
    },
    qrscan_campus: function () {
        // 扫码出入
        wx.scanCode({
            onlyFromCamera: true,
            success: (res) => {
                console.log(res);
                wx.request({
                    url: 'https://fxlkt.com/record/addRecordByQR_str',
                    data: {
                        port_QR_str: res.result,
                        wechat_id: this.data.wechat_id,
                        status: "normal",
                    },
                    success: (backstage_res) => {
                        let data = backstage_res.data;
                        console.log(data);
                        if (data.status.slice(-6) == 'NORMAL') {
                            // 成功
                            wx.redirectTo({
                                url: '/pages/inout_status/success',
                            })
                        }
                        else {
                            // 只出不入，异常
                            wx.redirectTo({
                                url: '/pages/inout_status/fail',
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
            },
            fail: (res) => {
                wx.showToast({
                    title: '扫码失败',
                    icon: 'error',
                })
            }
        });

    },
})