import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MediaState> buildReducer() {
  return asReducer(
    <Object, Reducer<MediaState>>{
      MediaAction.action: _onAction,
    },
  );
}

MediaState _onAction(MediaState state, Action action) {
  final MediaState newState = state.clone();
  return newState;
}
