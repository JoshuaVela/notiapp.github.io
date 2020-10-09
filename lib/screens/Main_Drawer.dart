import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/HomeScreen.dart';
import 'package:flutter_login_ui/screens/detail_screen.dart';
import 'package:flutter_login_ui/screens/Ajustes.dart';
import 'package:flutter_login_ui/screens/Perfil.dart';


class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children: <Widget>[
          Container(
            width:double.infinity,
            padding: EdgeInsets.all(20),
            color:Theme.of(context).primaryColor,
            child:Center(
              child:Column(
                children:<Widget>[
                  Container(
                    width:100,
                    height:100,
                    margin:EdgeInsets.only(
                      top:30,
                    ),
                    decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      image:DecorationImage(
                          image:NetworkImage(
                              'https://eloutput.com/app/uploads-eloutput.com/2020/04/Batman.jpg'
                          ),
                          fit:BoxFit.fill
                      ),
                    ),

                  ),
                  Text('Ricardo', style:TextStyle(color:Colors.white,
                  )

                  )

                ],
              ),
            ),
          ),
          ListTile(
            leading:Icon(Icons.android),
            title:Text(
              'Inicio',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.person),
            title:Text(
              'Perfil',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> PerfilScreen(),
                ),
              );
            },
          ),
          ListTile(

            leading:Icon(Icons.schedule),
            title:Text(
              'Reportes',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> DetailsScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title:Text(
              'Ajustes',
              style:TextStyle(
                fontSize: 18,

              ),
            ),
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=> AjustesScreen(),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}
