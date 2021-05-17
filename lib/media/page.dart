import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MediaPage extends Page<MediaState, Map<String, dynamic>> {
  MediaPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<MediaState>(
              adapter: null, slots: <String, Dependent<MediaState>>{}),
          middleware: <Middleware<MediaState>>[],
        );
}
