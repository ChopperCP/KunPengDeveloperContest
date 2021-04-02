// app.js
App({
  onLaunch() {
    // 展示本地存储能力
    const logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    wx.cloud.init({
      env: 'kunpengsisse2-9gyt5rrjdef36be3',
      traceUser: true,
    });
  },
  globalData: {
    userInfo: null,
  },
})
