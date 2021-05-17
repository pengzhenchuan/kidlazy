import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ExploreState> buildReducer() {
  return asReducer(
    <Object, Reducer<ExploreState>>{
      ExploreAction.action: _onAction,
    },
  );
}

ExploreState _onAction(ExploreState state, Action action) {
  final ExploreState newState = state.clone();
  return newState;
}
