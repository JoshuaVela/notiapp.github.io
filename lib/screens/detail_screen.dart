import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/Main_Drawer.dart';




class DetailsScreen extends StatelessWidget {
  static const routeName='/details-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Reportes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Reportes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 32,
                wordSpacing: 2.0,
              ),
            ),
            Form(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(25.0),
                        child: Align(

                          alignment: Alignment.topCenter,
                        )),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.send),
                          hintText: 'Ingresar Descripcion',
                          counterText: '0 characters',
                          border: const OutlineInputBorder(),
                          contentPadding: const EdgeInsets.all(20.0)),
                    ),
                    Container(
                        child: Align(
                          child: Text(''),
                          alignment: Alignment.centerLeft,
                        )),

                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.send),
                          hintText: 'Ingresa Fecha del incidente',
                          fillColor: Colors.black,
                          counterText: '0 characters',
                          border: const OutlineInputBorder(),
                          contentPadding: const EdgeInsets.all(20.0)),
                    ),

                  ],
                )),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

