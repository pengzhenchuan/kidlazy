import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:kidlazy/explore/page.dart';
import 'package:kidlazy/main/page.dart';
import 'package:kidlazy/store/state.dart';
import 'package:kidlazy/store/stroe.dart';
import 'package:kidlazy/subscribe/page.dart';

import '../home/page.dart';
import '../increase/page.dart';
import '../media/page.dart';

void main() {
  runApp(youtobe());
}

Widget youtobe() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      //页面添加
      'home_page': HomePage(),
      'explore_page': ExplorePage(),
      'increase_page': IncreasePage(),
      'subscribe_page': SubscribePage(),
      'media_page': MediaPage(),
    },
    visitor: (String path, Page<Object, dynamic> page) {
      if (page.isTypeof<GlobalBaseState>()) {
        page.connectExtraStore<GlobalState>(GlobalStore.store,
                (Object pageState, GlobalState appState) {
              final GlobalBaseState p = pageState;
              if (p.themeColor != appState.themeColor) {
                if (pageState is Cloneable) {
                  final Object copy = pageState.clone();
                  final GlobalBaseState newState = copy;
                  newState.themeColor = appState.themeColor;
                  return newState;
                }
              }
              return pageState;
            });
      }
    },
  );
  return MaterialApp(
    home: MainPage().buildPage(null),
    theme: ThemeData(primarySwatch: Colors.red),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );

}
