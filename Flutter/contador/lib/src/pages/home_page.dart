import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 25);
  final int conteo = 10;

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
          child: Column(
	      mainAxisAlignment: MainAxisAlignment.center,
		children: <Widget>[
		  Text('Numero de clicks:', style: estiloTexto),
		  Text('$conteo', style: estiloTexto)
		],
	      ) 
	  ),
	floatingActionButton: FloatingActionButton(
	    child: Icon(
		Icons.add
		),
	    onPressed: (){
	      print("Hola Mundo");
	    },
	    ),
	);
  }
}
