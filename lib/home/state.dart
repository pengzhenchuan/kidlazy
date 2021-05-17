import 'package:fish_redux/fish_redux.dart';
import 'package:kidlazy/home/item/adapter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'item/state.dart';

class HomeState extends MutableSource implements Cloneable<HomeState> {

  RefreshController refreshController;
  List<ItemState> items;

  @override
  HomeState clone() {
    return HomeState()
    ..refreshController=refreshController
    ..items=items;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return items[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return ItemAdapter.userType;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => items==null?0:items.length;

  @override
  void setItemData(int index, Object data
      ) {
    // TODO: implement setItemData
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()
    ..refreshController = RefreshController(initialRefresh: true);
}
