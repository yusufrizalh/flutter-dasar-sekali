import 'package:flutter/material.dart';
import 'routes-hero.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
