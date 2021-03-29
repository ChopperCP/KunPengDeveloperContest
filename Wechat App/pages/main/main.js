// pages/main/main.js
var QRCode = require('../../utils/weapp-qrcode.js')
var qrcode;


Page({
    data: {
        text: ' ',
        image: '',
        userIdentity: 'employee',
    },
    onLoad: function (options) {
        qrcode = new QRCode('canvas', {
            // usingIn: this,
            text: "http://www.baidu.com",
            // image:'/images/bg.jpg',
            width: 150,
            height: 150,
            colorDark: "#1CA4FC",
            colorLight: "white",
            correctLevel: QRCode.CorrectLevel.H,
        });
        wx.login({
            success(res) {
                if (res.code) {
                    //发起网络请求
                    wx.request({
                        url: 'https://backstage/queryuser',
                        data: {
                            code: res.code
                        }
                    });
                    // 取得用户身份
                    this.setData(
                        {
                            userIdentity: res.data.userIdentity,
                        }
                    );

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
    tapHandler: function () {

    },
})