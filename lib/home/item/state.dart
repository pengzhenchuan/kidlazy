import 'package:fish_redux/fish_redux.dart';
import 'package:kidlazy/info/home_entity.dart';

class ItemState implements Cloneable<ItemState> {
  HomeData homeData;

  ItemState({this.homeData});

  @override
  ItemState clone() {
    return ItemState()..homeData = homeData;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
