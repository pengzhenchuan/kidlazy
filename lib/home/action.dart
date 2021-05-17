import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction { action, refresh, loading, setListData }

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action);
  }

  static Action onRefresh() {
    return const Action(HomeAction.refresh);
  }

  static Action onLoading() {
    return const Action(HomeAction.loading);
  }

  static Action onSetListData(list) {
    return Action(HomeAction.setListData,payload: list);
  }
}
