import 'package:fish_redux/fish_redux.dart';

class IncreaseState implements Cloneable<IncreaseState> {

  @override
  IncreaseState clone() {
    return IncreaseState();
  }
}

IncreaseState initState(Map<String, dynamic> args) {
  return IncreaseState();
}
