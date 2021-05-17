import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<MediaState> buildEffect() {
  return combineEffects(<Object, Effect<MediaState>>{
    MediaAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MediaState> ctx) {
}
