import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("button")),
      body: Center(
        child: Row(
          children: [TextButton(onPressed: () {}, child: Text("textButton"))],
        ),
      ),
    );
  }
}
