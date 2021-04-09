import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  @override
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683_960_720.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            right: 140.0,
            top: 100.0,
            child: Text(date.hour.toString() + ':' + date.minute.toString(), style: TextStyle(color: Colors.white, fontSize: 45.0)),
          ),
          Positioned(
            right: 140.0,
            top: 150.0,
            child: Text("Belajar Stack Flutter", style: TextStyle(color: Colors.white, fontSize: 16.0)),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "My Quotes",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 16.0, right: 16.0, bottom: 8),
                    child: Text("Continuous Learning and Keep Up to Date"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 32.0),
                    child: Text("- Inixindo Surabaya -"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
