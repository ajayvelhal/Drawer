import 'package:flutter/material.dart';

class PageOne extends StatelessWidget{
  final String title;

  PageOne(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }

}