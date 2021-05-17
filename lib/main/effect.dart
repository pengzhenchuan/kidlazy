import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.action: _onAction,
    Lifecycle.initState: _initController,
  });
}

void _onAction(Action action, Context<MainState> ctx) {}

/// 初始化 TabController
void _initController(Action action, Context<MainState> ctx) {
  // 获取到 TickerProvider
  final TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  // 创建 TabController
  var _controller =
      TabController(vsync: tickerProvider, length: ctx.state.tabList.length);
  // 赋值给 state 中的 tabController
  ctx.state.controller = _controller;
}
