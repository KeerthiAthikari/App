import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(13, 67, 148,1),
      ),
      home: Tap(title: 'Flutter Demo Home Page'),
    );
  }
}
class Tap extends StatefulWidget {
  Tap({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _Tap createState() => _Tap();
}
class _Tap extends State<Tap> {
  @override
  Widget build(BuildContext context) {

    return InkWell(
      // When the user taps the button, show a snackbar.
    onTap: () {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Date Range'),
      ));
    },
    child: Container(
    padding: EdgeInsets.all(12.0),
    child: Text('Statements'),
    ),
    );


  }
}