import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SubscribeState> buildEffect() {
  return combineEffects(<Object, Effect<SubscribeState>>{
    SubscribeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SubscribeState> ctx) {}
