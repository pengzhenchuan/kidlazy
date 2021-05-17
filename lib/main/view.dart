import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:kidlazy/explore/page.dart';
import 'package:kidlazy/home/page.dart';
import 'package:kidlazy/increase/page.dart';
import 'package:kidlazy/media/page.dart';
import 'package:kidlazy/subscribe/page.dart';

import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    appBar: new AppBar(
      leadingWidth: 20.0,
      leading: new IconButton(
        icon: new Icon(Icons.accessible_forward_sharp, color: Colors.white),
        onPressed: () {},
        tooltip: '站起来我还能敲代码',
      ),
      title: new Text('YouTobe'),
      actions: <Widget>[
        new IconButton(
          icon: new Icon(Icons.phonelink_rounded),
          onPressed: () {
          },
          tooltip: '动感地带',
        ),
        new IconButton(
          icon: new Icon(Icons.notifications),
          onPressed: () {},
          tooltip: '我是一个平平无奇的搜索框',
        ),
        new IconButton(
          icon: new Icon(Icons.search),
          onPressed: () {},
          tooltip: '我是一个平平无奇的搜索框',
        ),
        new IconButton(
          icon: new Icon(Icons.person),
          onPressed: () {},
          tooltip: 'yyds',
        )
      ],
    ),
    body: new TabBarView(controller: state.controller, children: <Widget>[
      new HomePage().buildPage(null),
      new ExplorePage().buildPage(null),
      new IncreasePage().buildPage(null),
      new MediaPage().buildPage(null),
      new SubscribePage().buildPage(null),
    ]),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
    ),

    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: new Material(
      elevation: 15.0,
      color: Colors.red,
      child: new TabBar(
        labelColor: Colors.black,
        indicator: const BoxDecoration(),
        unselectedLabelColor: Colors.white,
        controller: state.controller,
        tabs: <Tab>[
          new Tab(text: "首页", icon: new Icon(Icons.home)),
          new Tab(text: '探索', icon: new Icon(Icons.explore)),
          new Tab(icon: new Icon(Icons.home,color: Colors.transparent,),),
          new Tab(text: '订阅', icon: new Icon(Icons.video_collection_outlined)),
          new Tab(text: '媒体库', icon: new Icon(Icons.video_settings_sharp)),
        ],
      ),
    ),
  );
}
