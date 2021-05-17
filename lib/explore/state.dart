import 'package:fish_redux/fish_redux.dart';

class ExploreState implements Cloneable<ExploreState> {
  @override
  ExploreState clone() {
    return ExploreState();
  }
}

ExploreState initState(Map<String, dynamic> args) {
  return ExploreState();
}
