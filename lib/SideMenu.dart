import 'package:flutter/material.dart';
import 'package:hapa/HapaHome.dart';
import 'Anunciar.dart';
import 'About.dart';
import 'MiembroHapa.dart';
import 'Perfil.dart';


class SideMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(

      //other styles
        ),
      child: new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
                decoration:new BoxDecoration(
                    border: Border.all(
                      color: Colors.white, //                   <--- border color
                      width: 5.0,
                    ),
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/insta_logo.png")
                    )

                ) ,
            ),
            new ListTile(

              title: new Text("Home"),
              trailing: new Icon(Icons.home),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new HapaHome()));
                },
            ),
            new ListTile(
              title: new Text("Quiero Anunciar"),
              trailing: new Icon(Icons.send),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Anunciar()));
              },
            ),
            new ListTile(
              title: new Text("Perfil"),
              trailing: new Icon(Icons.account_box),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Perfil()));
              },
            ),
            new ListTile(
              title: new Text("Soy miembro hapa"),
              trailing: new Icon(Icons.airplay),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new MiembroHapa()));
              },
            ),
            new Align(
              alignment: Alignment.bottomCenter,
              child:ListTile(

                title: new Text("Acerca de Nosotros"),
                trailing: new Icon(Icons.info),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new About()));
                },
              ),
            )
          ],
        ),

      )
    );
    }

}