import 'package:drawer/pageone.dart';
import 'package:drawer/pagethree.dart';
import 'package:drawer/pagetwo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.deepOrange,
//        primaryColor: defaultTargetPaltform == TargetPlatform.android
        ),
        home: new HomePage(),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => new PageOne("Page One"),
          "/b": (BuildContext context) => new PageTwo("Page two"),
          "/c": (BuildContext context) => new PageThree("Page three")
        });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Drawer")),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Ajay Velhal"),
            accountEmail: Text("ajayvelhal@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.deepOrange,
              child: new Text("A"),
            ),
          ),
          new ListTile(
              title: Text("Page One"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
              }),
          new ListTile(
              title: Text("Page Two"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/b");
              }),
          new ListTile(
              title: Text("Page Three"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/c");
              }),
          new Divider(),
          new ListTile(
            title: Text("Close"),
            trailing: new Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          )
        ],
      )),
      body: Container(child: Center(child: Text("HomePage"))),
    );
  }
}
