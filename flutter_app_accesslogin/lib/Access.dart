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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      elevation: 5.0,

      color: Colors.orangeAccent,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        onPressed: () {},
        child: Text("Reset Password",
            textAlign: TextAlign.center,
            style: style.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold,)),
      ),

    );

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 51, 144,1),
      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(" Access & Security"),
        backgroundColor: Color.fromRGBO(4, 63, 154,1),
        leading: Icon(Icons.menu),

      ),
      body: SingleChildScrollView(
          child:Container(
            child:Column(
                children:<Widget>[

                   Container(
                    margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
                    alignment: Alignment.center,
                    // height: MediaQuery.of(context).size.height,
                    //width: MediaQuery.of(context).size.width ,
                    //color:  Color.fromRGBO(44, 90, 167,0),
                    child:  Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(24, 83, 173,1)
                      ),


                      child: Column(
                          children : <Widget>[
                            new Align(alignment: Alignment.topLeft,child: new Text("Reset Password",
                              style:style.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20.0),),),
                            SizedBox(height: 15.0,),
                             Align(alignment: Alignment.topLeft,child: new Text("Current Password",
                              style:style.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15.0),),),

                             TextField(
                              decoration: new InputDecoration(

                                hintText: "Enter",
                                border:
                                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                hintStyle: TextStyle(fontSize: 15.0, color: Colors.blue,height:0.0),

                                fillColor: Colors.white,
                                filled: true,

                              ),
                            ),
                            SizedBox(height: 15.0,),
                             Align(alignment: Alignment.topLeft,child: new Text("New Password",
                              style:style.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15.0),),),
                             TextField(
                              decoration: new InputDecoration(
                                hintText: "Enter",
                                border:
                                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                hintStyle: TextStyle(fontSize: 15.0, color: Colors.blue,),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                            SizedBox(height: 15.0,),
                            new Align(alignment: Alignment.topLeft,child: new Text("Confirm Password",
                              style:style.copyWith(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15.0),),),
                            new TextField(
                              decoration: new InputDecoration(
                                hintText: "Enter",
                                border:
                                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                hintStyle: TextStyle(fontSize: 15.0, color: Colors.blue),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ]
                      ),

                    ),
                  ),
                  SizedBox(height: 20.0,),
                  MaterialButton(
                    height: 40.0,
                    minWidth: 340.0,
                    color:Colors.orange,
                    textColor: Colors.white,
                    child: new Text("Reset Password"),
                    onPressed: () => {},
                    splashColor: Colors.white,
                  )
                ]
            ),
          )
      ),
    );
  }
}