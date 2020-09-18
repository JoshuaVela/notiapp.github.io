import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alertas Tampico'),
        ),
        drawer: MenuLat(),
        body: Center(
            child: Text('Las publicaciones de reportes se mostrarian aqui')),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alertas Tampico'),
        ),
        drawer: MenuLat(),
        body: Center(
            child: Text('Las publicaciones de reportes se mostrarian aqui')),
      ),
      initialRoute: '/login',
      routes: {
        '/main': (context) => MainScreen(),
        '/login': (context) => MyHomePage(),
        '/myapp': (context) => MyApp(),
        '/report': (context) => ReportCreate(),
      },
    );
  }
}

class MenuLat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Rodrigo Vazquez"),
            accountEmail: Text("rodrigovqz@gmail.com"),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text(
                "Crear reporte",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/report');
              },
            ),
          ),
          new ListTile(
            title: Text(
              "Filtrar Reportes",
              style: TextStyle(color: Colors.indigo),
            ),
          ),
          new ListTile(
            title: Text(
              "Numeros de emergencia",
              style: TextStyle(color: Colors.indigo),
            ),
          ),
          new ListTile(
            title: Text(
              "Mapa",
              style: TextStyle(color: Colors.indigo),
            ),
          ),
        ],
      ),
    );
  }
}

class ReportCreate extends StatefulWidget {
  @override
  _ReportCreateState createState() => _ReportCreateState();
}

class _ReportCreateState extends State<ReportCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Reporte',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    child: Align(
                      child: Text('Tipo de Reporte'),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "¿Qué tipo?"),
                  ),
                  Container(
                    child: Align(
                      child: Text('Detalle del reporte'),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Descripción"),
                  ),
                  Container(
                    child: Align(
                      child: Text('Lugar'),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "¿Dónde es?"),
                  ),
                  new RaisedButton(child: Text("+Foto"), onPressed: null),
                  new RaisedButton(child: Text("Generar"), onPressed: null),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Alertas Tampico',
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
                      child: Text('Email'),
                      alignment: Alignment.topCenter,
                    )),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.send),
                      hintText: 'Ingresar Email',
                      counterText: '0 characters',
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.all(20.0)),
                ),
                Container(
                    child: Align(
                  child: Text(''),
                  alignment: Alignment.centerLeft,
                )),
                Text('Password'),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.send),
                      hintText: 'Ingresa Contraseña',
                      fillColor: Colors.black,
                      counterText: '0 characters',
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.all(20.0)),
                ),
                RaisedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/main'),
                  },
                  color: Colors.blue,
                  child: Text('LOGIN'),
                )
              ],
            )),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
