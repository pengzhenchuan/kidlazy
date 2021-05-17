import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SubscribePage extends Page<SubscribeState, Map<String, dynamic>> {
  SubscribePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<SubscribeState>(
              adapter: null, slots: <String, Dependent<SubscribeState>>{}),
          middleware: <Middleware<SubscribeState>>[],
        );
}
