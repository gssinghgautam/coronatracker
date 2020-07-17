import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quick_start/constants/routes_name.dart';
import 'package:flutter_quick_start/ui/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoutePage:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HomeView(),
      );
  }
  return MaterialPageRoute(
    builder: (_) => Scaffold(
      body: Center(
        child: Text('No route defined for ${settings.name}'),
      ),
    ),
  );
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return CupertinoPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
