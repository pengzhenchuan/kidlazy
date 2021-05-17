import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class IncreasePage extends Page<IncreaseState, Map<String, dynamic>> {
  IncreasePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<IncreaseState>(
                adapter: null,
                slots: <String, Dependent<IncreaseState>>{
                }),
            middleware: <Middleware<IncreaseState>>[
            ],);

}
