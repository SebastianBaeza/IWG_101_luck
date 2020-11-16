import 'package:flutter/material.dart';
import 'package:iwg_proyect/page2.dart';
import 'package:iwg_proyect/page3.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
//Barra superior--------------------------------------------
      appBar: AppBar(
        toolbarHeight: 70.0,
        shadowColor: Colors.black45,
        centerTitle: true,
        title: Text(
          'Primera Pagina',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'IndieFlower',
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
//---------------------------------------------------------
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new DrawerHeader(
                  child: CircleAvatar(
                      backgroundImage: AssetImage('icons/New_Drawing.png'))),
              color: Colors.blue[200],
            ),



            new Container(
              child: Text(
                'Version 0.0.1',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Goldman'),
              ),
              color: Colors.blue[300],
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
            ),



            new Container(
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => SecondRoute()));
                  },
                  color: Colors.white10,
                  child:
                      ListTile(title: Text('Dibujo',
                      style: TextStyle(fontSize:40,),))),
              color: Colors.blue[300],
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
            ),



            new Container(
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ThirdRoute()));
                  },
                  color: Colors.white10,
                  child:
                      ListTile(title: Text('hola'), subtitle: Text('mundo'))),
              color: Colors.blue[300],
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),


      
//cuerpo principal de la pagina-------------------------
      body: Center(
//widget columna--------------------------------------------
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
//###################### Widgets en columna #######################

//Imagen avatar redonda-------------------------------------------------------
          Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 200),
              child: CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('icons/New_Drawing.png'),
              )),

//Boton de prueba------------------------------------------------------------------
//            ElevatedButton(
//Funcion del boton------------------
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => ThirdRoute()));
//              }, child: Text('Pagina 3'),
//            ),

//Boton-------------------------------------------------------------------
          FlatButton(
//Funcion del boton------------
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => SecondRoute()));
            },
//Child del boton---------------
            child: Card(
              margin: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 30.0,
              ),
              child: Text(
                'A Dibujar !!',
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

//Boton-------------------------------------------------------------------
          FlatButton(
//Funcion del boton------------
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ThirdRoute()));
            },
//Child del boton---------------
            child: Card(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5.0,
              ),
              child: Text(
                'Opciones',
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
      )),
    );
  }
}
