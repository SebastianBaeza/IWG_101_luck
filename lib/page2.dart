import 'package:flutter/material.dart';
import 'package:iwg_proyect/page1.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pagina 1'),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => FirstRoute()
            ));
          },
        ),
      ),
    );
  }
}