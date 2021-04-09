import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Hero Animation'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              pageBuilder: (_, __, ___) => AboutPage(),
            ),
          );
        },
        child: Hero(
          tag: "ContohTag",
          child: Icon(
            Icons.airport_shuttle,
            size: 100.0,
          ),
          flightShuttleBuilder: (flightContext, animation, direction, fromContext, toContext) {
            if (direction == HeroFlightDirection.push) {
              return Icon(
                Icons.local_airport,
                size: 100.0,
              );
            } else if (direction == HeroFlightDirection.pop) {
              return Icon(
                Icons.local_airport,
                size: 60.0,
              );
            }
          },
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Kedua'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: "ContohTag",
            child: Icon(
              Icons.home,
              size: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}
