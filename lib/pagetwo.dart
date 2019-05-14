import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget{
  final String title;

  PageTwo(this.title);
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