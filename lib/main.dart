import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Card Sample Demo",
        home: new MyHomePage()
    );
  }

}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Card Sample"), backgroundColor: Colors.pink,),
        body: new Container(
          color: Colors.blueGrey,
          padding: new EdgeInsets.all(5.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                  title: new Text("I Love Flutter", style: new TextStyle(fontSize: 18.0, color: Colors.green, fontStyle: FontStyle.italic)),
                  icon: new Icon(Icons.favorite, color: Colors.red)),
              new MyCard(title: new Text("I am at home", style: new TextStyle(fontSize: 18.0, color: Colors.red, fontStyle: FontStyle.italic)),
                  icon: new Icon(Icons.home, color: Colors.blue)),
              new MyCard(title: new Text("Call you later", style: CustomStyle.style()),
                  icon: new Icon(Icons.call, color: Colors.green))


            ],
          ),
        )

    );
  }
}

class CustomStyle {
   static TextStyle style(){
     return new TextStyle(fontSize: 18.0, color: Colors.blue, fontStyle: FontStyle.italic);
   }
}

class MyCard  extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Card(
          elevation: 10.0,
          child: new Container(
            padding: new EdgeInsets.all(10.0),

            child:new Column(
            children: <Widget>
            [
              title,
              icon
            ],
          ),)

    );
  }
}
