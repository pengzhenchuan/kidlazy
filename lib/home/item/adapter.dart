import 'package:fish_redux/fish_redux.dart';
import 'package:kidlazy/home/item/component.dart';
import 'package:kidlazy/home/state.dart';

class ItemAdapter extends SourceFlowAdapter<HomeState> {
  static const userType = 'pzc';

  ItemAdapter()
      : super(
          pool: <String, Component<Object>>{
            userType: ItemComponent(),
          },
        );
}
