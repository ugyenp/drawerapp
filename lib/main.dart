import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterdraw/pageone.dart';
import 'package:flutterdraw/pagetwo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
       "/a":(BuildContext context)=> new PageOne("Page One"),
       "/b":(BuildContext context)=> new PageTwo("Page Two"),
      }
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
  return new Scaffold(
    appBar: new AppBar(
      title: new Text("Drawer App"),
      elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
    ),

    drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
         new UserAccountsDrawerHeader(
           accountName: new Text("Ugyen Penjor"),
           accountEmail: new Text("yongdrachen@gmail.com"),
           currentAccountPicture: new CircleAvatar(
             backgroundColor: Colors.white,
            // child: new Text("P"),
           ),
         ),
         new ListTile(
           title: new Text("Page One"),
           trailing: new Icon(Icons.arrow_upward),
           onTap: ()=>Navigator.of(context).pushNamed("/a"),
         ),

         new ListTile(
           title: new Text("Page Two"),
           trailing: new Icon(Icons.arrow_downward),
           onTap: ()=>Navigator.of(context).pushNamed("/b"),
         ),

         new Divider(),

         new ListTile(
           title: new Text("Close"),
           trailing: new Icon(Icons.close),
           onTap: () => Navigator.of(context).pop(),
         ),

        ],
      ),
    ),

    body: new Container(
      child: new Center(
        child: new Text("Home Page"),
      ),
    ),
  );
  }
}

