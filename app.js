// app.js
App({
  onLaunch() {
    // 展示本地存储能力
    const logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    wx.cloud.init({
      env: 'cloud1-7g5gmqd949b5f778',
      traceUser: true,
    });
  },
  globalData: {
    userInfo: null,
  },
})
