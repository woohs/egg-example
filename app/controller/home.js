'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;

    // 调用扩展方法
    if (ctx.isIOS) {
      ctx.body = 'Hi~尊贵的苹果用户';
      return;
    }

    await ctx.render('home/index.html');
  }
}

module.exports = HomeController;
