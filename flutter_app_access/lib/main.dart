import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Access & Security',

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Access & Security'),


    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,color: Colors.white);


  @override
  Widget build(BuildContext context) {
    final Currentpassword = TextField(

        style: style,

        decoration: InputDecoration(

          contentPadding: EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
          labelText:" Current Password",
          labelStyle: new TextStyle(color: Colors.blue, fontSize: 15.0),
          fillColor: Colors.white,
          filled: true,
          hintText: "Enter",
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),

        )
    );
    final Confirmpassword = TextField(

        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
          labelText:" Confirm Password",
          labelStyle: new TextStyle(color: Colors.white, fontSize: 15.0),
          fillColor: Colors.white,
          filled: true,
          hintText: "Enter",
          hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),

        )
    );

    final Newpassword = TextField(
        obscureText: true,
        style: style.copyWith(color: Colors.white),

        decoration: InputDecoration(

          contentPadding: EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
          labelText:"New Password",
          labelStyle: new TextStyle(color: Colors.white, fontSize: 15.0),
          hintText: "Enter",
          hintStyle: TextStyle(fontSize: 13.0, color: Colors.grey),
          fillColor: Colors.white,
          filled: true,

        )
    );
    final loginButon = Material(
      elevation: 5.0,

      color: Colors.orangeAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold,)),
      ),

    );
    return Scaffold(
        body: Center(
        child: Container(
        color: Colors.blueAccent,
        child: Padding(
        padding: const EdgeInsets.all(36.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[


    SizedBox(height: 30.0,),
    Currentpassword,
      SizedBox(height: 15.0,),
      Confirmpassword,
    SizedBox(height: 15.0),
    Newpassword,
    SizedBox(
    height: 50.0,
    ),
    loginButon,
    ]
    )
        )
    )
        )

    );


  }
}


