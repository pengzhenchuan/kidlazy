import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return new Scaffold(
    body: new Column(
      children: <Widget>[
        new Row(children: <Widget>[
          // new Image.network(
          //   'https://raw.githubusercontent.com/think-ing/flutter_demo/master/images/ba.jpg',
          //   width: 6.0,
          //   height: 6.0,
          //   color: Colors.blue,
          //   colorBlendMode: BlendMode.colorDodge,
          // )
        ]),
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              child: new Icon(Icons.person),
              padding: new EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            new Container(
              child: new Container(
                color: Colors.black45,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(state.homeData.title),
                    new Text(state.homeData.content),
                    new Text(state.homeData.time),
                  ],
                ),
              ),
              padding: new EdgeInsets.fromLTRB(0, 10, 10, 0),
              margin: new EdgeInsets.fromLTRB(0, 0, 0, 0),
              width:  MediaQuery.of(viewService.context).size.width-50,
            )
          ],
        ),
      ],
    ),
  );
}
