import 'package:flutter/material.dart';
import 'package:projetocomponentesflutter/src/pages/alert_page.dart';
import 'package:projetocomponentesflutter/src/pages/animation_page.dart';
import 'package:projetocomponentesflutter/src/pages/avatar_page.dart';
import 'package:projetocomponentesflutter/src/pages/card_page.dart';
import 'package:projetocomponentesflutter/src/pages/home_page.dart';
import 'package:projetocomponentesflutter/src/pages/input_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'                 : (BuildContext context) => HomePage(),
    'alert'             : (BuildContext context) => AlertPage(),
    'avatar'            : (BuildContext context) => AvatarPage(),
    'card'              : (BuildContext context) => CardPage(),
    'animationContainer': (BuildContext context) => AnimationContainerPage(),
    'inputs'              : (BuildContext context) => InputPage(),
  };
}
