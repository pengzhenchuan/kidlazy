import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return new SmartRefresher(
    enablePullDown: true,
    enablePullUp: false,
    header: new WaterDropHeader(),
    footer: new CustomFooter(
      builder: (BuildContext context, LoadStatus mode) {
        Widget body;
        if (mode == LoadStatus.idle) {
          body = new Text("pull up load");
        } else if (mode == LoadStatus.loading) {
          body = new CupertinoActivityIndicator();
        } else if (mode == LoadStatus.failed) {
          body = new Text("Load Failed!Click retry!");
        } else {
          body = new Text("No more Data");
        }
        return new Container(
          height: 55,
          child: new Center(child: body),
        );
      },
    ),
    controller: state.refreshController,
    onRefresh: () {
      dispatch(HomeActionCreator.onRefresh());
    },
    // onRefresh: _onRefresh,
    onLoading: () {
      dispatch(HomeActionCreator.onLoading());
    },
    // onLoading: _onLoading,
    child: ListView.builder(
      itemBuilder: adapter.itemBuilder,
      itemExtent: 100.0,
      itemCount: adapter.itemCount,
    ),
  );
}
