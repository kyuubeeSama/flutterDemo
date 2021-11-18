import 'package:flutter/material.dart';

class LabelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("label"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text("data")],
        ),
      ),
    );
  }
}
