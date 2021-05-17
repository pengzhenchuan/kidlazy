import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ExploreAction { action }

class ExploreActionCreator {
  static Action onAction() {
    return const Action(ExploreAction.action);
  }
}
