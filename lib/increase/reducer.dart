import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<IncreaseState> buildReducer() {
  return asReducer(
    <Object, Reducer<IncreaseState>>{
      IncreaseAction.action: _onAction,
    },
  );
}

IncreaseState _onAction(IncreaseState state, Action action) {
  final IncreaseState newState = state.clone();
  return newState;
}
