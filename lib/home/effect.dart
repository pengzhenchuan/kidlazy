import 'package:fish_redux/fish_redux.dart';
import 'package:kidlazy/home/item/state.dart';
import 'package:kidlazy/info/home_entity.dart';

import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.action: _onAction,
    Lifecycle.initState: _initState,
    HomeAction.refresh: _onRefresh,
    HomeAction.loading: _onLoading,
  });
}

void _onAction(Action action, Context<HomeState> ctx) {}

void _initState(Action action, Context<HomeState> ctx) {
  List<HomeData> list = <HomeData>[];
  for (int i = 0; i < 10; i++) {
    list.add(new HomeData(
        title: "我是0$i号标题",
        content: "学习flutter使我快乐",
        time: "2021-05-17 17:55:03"));
  }

  //构建符合要求的列表数据源
  List<ItemState> items = List.generate(list.length, (index) {
    return ItemState(homeData: list[index]);
  });
  // List<TbCouponZBResultList> tbs = data;
  // List<TbListItemState> items;
  //
  // if (list.isNotEmpty && list.length > 0) {
  //   items = tbs
  //       .map((HomeData tb) => HomeState(item: tb))
  //       .toList(growable: true);
  ctx.dispatch(HomeActionCreator.onSetListData(items));
  ctx.state.refreshController.refreshCompleted();
}

void _onRefresh(Action action, Context<HomeState> ctx) async {
  // monitor network fetch
  await Future.delayed(Duration(milliseconds: 1000));
  // if failed,use refreshFailed()
  ctx.state.refreshController.refreshCompleted();
}

void _onLoading(Action action, Context<HomeState> ctx) async {
  // monitor network fetch
  await Future.delayed(Duration(milliseconds: 1000));
  ctx.state.refreshController.loadComplete();
  _initState(action, ctx);
}
