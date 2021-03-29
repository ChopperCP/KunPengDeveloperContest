// pages/main/main.js
var QRCode = require('../../utils/weapp-qrcode.js')
var qrcode;


Page({
    data: {
        text: ' ',
        image: '',
        userIdentity: 'employee',
        qrText: '',
        isLogin: false,
    },
    onLoad: function (options) {

        wx.login({
            success(res) {
                if (res.code) {
                    //发起网络请求
                    wx.request({
                        url: 'https://backstage/queryuser',
                        data: {
                            code: res.code
                        },
                        success: function (backstage_res) {
                            // 取得用户身份
                            this.setData(
                                {
                                    userIdentity: res.data.userIdentity,
                                    qrText: res.data.qrText,
                                    isLogin: true,
                                }
                            );

                            // 展示二维码
                            qrcode = new QRCode('canvas', {
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
    },
    qrscan_get_records: function () {
        // 扫码查看别人的出入记录
        qrText = wx.scanCode({
            onlyFromCamera: false,
        });

    },
})