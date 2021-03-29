// pages/main/main.js
var QRCode = require('../../utils/weapp-qrcode.js')
var qrcode;


Page({
    data: {
        text: ' ',
        image: ''
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