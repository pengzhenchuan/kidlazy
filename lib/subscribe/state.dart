import 'package:fish_redux/fish_redux.dart';

class SubscribeState implements Cloneable<SubscribeState> {
  @override
  SubscribeState clone() {
    return SubscribeState();
  }
}

SubscribeState initState(Map<String, dynamic> args) {
  return SubscribeState();
}
