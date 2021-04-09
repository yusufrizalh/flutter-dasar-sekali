import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, 
        bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Belajar SliverAppBar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    )),
                background: Image(
                  image: AssetImage('assets/images/bee_gees.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPadding(
              padding: new EdgeInsets.all(10.0),
              sliver: new SliverList(
                delegate: new SliverChildListDelegate([
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                    ],
                  ),
                ]),
              ),
            ),
          ];
        },
        body: Center(
          child: Text("Gee Gees Favourite Album"),
        ),
      ),
    ));
  }
}
