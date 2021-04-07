// pages/register/register.js
var util = require('../../utils/util.js')

Page({

    /**
     * 页面的初始数据
     */
    data: {

    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function (options) {
        this.setData(
            {
                wechat_id: options.wechat_id,
            }
        )
    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function () {

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function () {

    },

    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide: function () {

    },

    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload: function () {

    },

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function () {

    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function () {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function () {

    },
    formSubmit(e) {
        
        var real_name=e.detail.value.real_name;
        var phone_number=e.detail.value.phone_number;

        if(real_name==""||phone_number==""){
            wx.showToast({
              title: '请输入完整信息!',
              icon: 'none'
            })
        }
        else{
            if(phone_number.length=="11"){
                console.log('form发生了submit事件，携带数据为：', e.detail.value);
                wx.request({
                    url: 'https://fxlkt.com/user/addUser',
                    data: {
                        wechat_id: this.data.wechat_id,
                        privilege: 'employee',
                        user_QR_str: util.getRandomStr(100),
                        phone_number: e.detail.value.phone_number,
                        real_name: e.detail.value.real_name,
                    },
                    success: (res) => {
                        console.log(res.data);
                        wx.showToast({
                            title: '注册成功',
                            icon: 'success'
                        });
                        setTimeout(function () {
                            wx.reLaunch({
                            url: '/pages/main/main',
                            })
                            }, 300)
                    }
                })
            }
            else{
                wx.showToast({
                  title: '手机号不正确',
                  icon: 'none'
                })
            }
        }


        
    },

    formReset(e) {
        console.log('form发生了reset事件，携带数据为：', e.detail.value)
        this.setData({
            chosen: ''
        })
    }
})