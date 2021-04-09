import 'package:flutter/material.dart';
import 'screen-hero.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/detail':
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => DetailPage(args),
          transitionDuration: Duration(milliseconds: 700),
          transitionsBuilder: (_, animation, secondAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
