import 'package:flutter/material.dart';

class PageThree extends StatelessWidget{
  final String title;

  PageThree(this.title);
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