import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<ExploreState> buildEffect() {
  return combineEffects(<Object, Effect<ExploreState>>{
    ExploreAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ExploreState> ctx) {
}
