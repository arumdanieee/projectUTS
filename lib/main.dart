import 'package:flutter/material.dart';
import 'package:uts/routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    theme: ThemeData(
      primarySwatch: Colors.cyan,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
