import 'package:flutter/material.dart';
import 'package:iwg_proyect/page2.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
//Barra superior--------------------------------------------
      appBar: AppBar(
        title: Text('First Route',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.black45,
        ),
        ),
        backgroundColor: Colors.indigo,
      ),
//---------------------------------------------------------

//cuerpo principal de la pagina-------------------------
      body: Center(
//widget columna--------------------------------------------
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//###################### Widgets en columna #######################

//Imagen avatar redonda-------------------------------------------------------
            CircleAvatar(
              radius: 90.0,
              backgroundImage: AssetImage('icons/New_Drawing.png'),
            ),

//Boton de prueba------------------------------------------------------------------
            ElevatedButton(
//Funcion del boton------------------
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => SecondRoute()));
              }, child: Text('Pagina 2'),
            ),

//Tarjeta normal------------------------------------------------------------------
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical:30.0,
              ),
              child: Text('A Dibujar !!',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'IndieFlower',
                  fontSize: 40.0,
                ),
              ),
              color: Colors.indigo,
              shadowColor: Colors.orange,
            ),

//Boton-------------------------------------------------------------------
            FlatButton(
//Funcion del boton------------
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => SecondRoute()));
              },
//Child del boton---------------
              child: Card(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical:30.0,
              ),
              child: Text('A Dibujar !!',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'IndieFlower',
                  fontSize: 40.0,
                ),
              ),
              color: Colors.indigo,
              shadowColor: Colors.orange,
            ), 
            ),
//-------------------------------------------------------------------
          ],
        )
      ),
    );
  }
}