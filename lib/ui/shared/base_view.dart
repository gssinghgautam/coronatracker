import 'package:flutter/material.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key key, this.child})
      : assert(child != null),
        super(key: key);

  final Widget child;

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
