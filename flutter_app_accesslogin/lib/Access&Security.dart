import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        backgroundColor: Color.fromRGBO(13, 67, 148,1),
        //primarySwatch: Colors.blue,
      ),
      home: SetAccess(title: 'Flutter Demo Home Page'),
    );
  }
}
class SetAccess extends StatefulWidget {
  SetAccess({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  _SetAccess createState() => _SetAccess();
}
class _SetAccess extends State<SetAccess> {
  final int length=4;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromRGBO(13, 51, 144,1),
    appBar: AppBar(

    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Text("Access & Security"),
      backgroundColor: Color.fromRGBO(4, 63, 154,1),
      leading: Icon(Icons.menu),
    ),
    body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images"),
            fit: BoxFit.cover,
          ),
        ),

        child:Container(

    child:Column(
    children:<Widget>[

    new Container(
    margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
    alignment: Alignment.center,
    // height: MediaQuery.of(context).size.height,
    //width: MediaQuery.of(context).size.width ,
    //color:  Color.fromRGBO(44, 90, 167,0),
    child:new  Container(
    decoration: BoxDecoration(
    color: Color.fromRGBO(24, 83, 173,1)
    ),


    child:new Column(

    children : <Widget>[
      new Align(alignment: Alignment.topLeft,child: new Text(" Setup  4  Digit  Pin",
    style:style.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),),),
      SizedBox(
        height: 10,
      ),
      new Text('So you dont need to enter your User ID and Password everytime when you login',
       style:style.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15.0)),
      SizedBox(
        height: 20,
      ),


]
    )
    )
    ),
      SizedBox(height: 20.0,),
      MaterialButton(
        height: 40.0,
        minWidth: 340.0,
        color:Colors.orange,
        textColor: Colors.white,
        child: new Text("Set Up Pin",style: style.copyWith(fontSize: 25.0),),
        onPressed: () => {},
        splashColor: Colors.white,
      )
        ]
    )
        )
    )
    );

  }
}