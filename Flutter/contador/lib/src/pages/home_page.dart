import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
          elevation: 5.0,
        ),
        body: Center(
          child: Text('Numero De Clicks'),
        ));
  }
}
