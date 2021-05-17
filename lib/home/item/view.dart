import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    body: new Column(
      children: <Widget>[
        new Row(children: <Widget>[
          new Image.network(
            'https://raw.githubusercontent.com/think-ing/flutter_demo/master/images/ba.jpg',
            color: Colors.blue,
            colorBlendMode: BlendMode.colorDodge,
          )
        ]),
        new Row(
          children: <Widget>[
            new Icon(Icons.person),
            new Column(
              children: <Widget>[
                new Text(state.homeData.title),
                new Text(state.homeData.content),
                new Text(state.homeData.time),
              ],
            )
          ],
        ),
      ],
    ),
  );
}
