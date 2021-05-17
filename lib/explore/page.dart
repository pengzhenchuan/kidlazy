import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ExplorePage extends Page<ExploreState, Map<String, dynamic>> {
  ExplorePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ExploreState>(
                adapter: null,
                slots: <String, Dependent<ExploreState>>{
                }),
            middleware: <Middleware<ExploreState>>[
            ],);

}
