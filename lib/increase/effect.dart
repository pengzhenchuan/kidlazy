import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<IncreaseState> buildEffect() {
  return combineEffects(<Object, Effect<IncreaseState>>{
    IncreaseAction.action: _onAction,
  });
}

void _onAction(Action action, Context<IncreaseState> ctx) {
}
