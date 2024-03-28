import 'package:flutter/material.dart';

class Routes {

  late BuildContext context;
  late String route;

  Routes(this.route);

  void routes(route) {
    onTap() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => route()));
    };
  }
}