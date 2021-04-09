import 'package:flutter/material.dart';
import 'nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Nav Drawer",
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatefulWidget {
  @override
  _BelajarNavigationDrawerState createState() => _BelajarNavigationDrawerState();
}

class _BelajarNavigationDrawerState extends State<BelajarNavigationDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.account_circle),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text("Belajar Nav Drawer"),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.account_box, color: Colors.white), onPressed: () => _scaffoldKey.currentState.openEndDrawer()),
        ],
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Belajar Navigation Drawer di Flutter',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
