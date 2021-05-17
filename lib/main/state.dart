import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class MainState implements Cloneable<MainState> {
  TabController controller;
  int tabIndex = 0; // 当前选中的tab索引
  List<String> tabList = ["首页", "探索","","订阅内容","媒体库"];
  @override
  MainState clone() {
    return MainState()
    ..controller=controller
    ..tabIndex=tabIndex
    ..tabList=tabList;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState()
  ;
}
