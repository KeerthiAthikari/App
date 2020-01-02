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
      home: TransactionDetail(title: 'Flutter Demo Home Page'),
    );
  }
}
class TransactionDetail extends StatefulWidget {
  TransactionDetail({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _TransactionDetail createState() => _TransactionDetail();
}
class _TransactionDetail extends State<TransactionDetail> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color.fromRGBO(13, 51, 144,1),
        appBar: AppBar(

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Transaction Detail",style: TextStyle(fontSize: 25.0,),),
          backgroundColor: Colors.indigo[900],
          leading: Icon(Icons.arrow_back,size: 30.0,),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg-img.png"),
                fit: BoxFit.cover,
              ),
            ),
            child:SingleChildScrollView(

            child:Container(
                //padding: const EdgeInsets.only(left: 25,top: 30,right: 25,bottom: 200),
               child: Column(
                    children: <Widget>[

    Align(
    alignment: Alignment.topLeft,
               child: Container(
                 margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
                 padding:  EdgeInsets.only(left:20.0,right:20.0,top:5.0),
                  decoration: BoxDecoration(
                color: Color.fromRGBO(19,78,164,0.7),
                borderRadius:  BorderRadius.circular(10.0),
              ),
                child:new  Column(
                  children : <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Transaction ID",
                          style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0,),),
                      ],
                    ),
                    Row(
                      children:<Widget>[
                    Text("10001231",
                          style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                      ]
                    ),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(
                      children: <Widget>[
                        Text("Transaction Date/Time",
                          style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0,),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("06/04/2019 08:16",
                          style:TextStyle(color: Colors.white,fontSize: 13.0,height: 1.8),),
                      ],
                    ),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(
                      children: <Widget>[
                        Text("Posted Date/Time",
                          style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                      ],
                    ),
                    Row(
                      children: <Widget>[Text("06/04/2019 08:20",
                        style:TextStyle(color: Colors.white,fontSize: 13.0,height: 1.8),),
                      ],
                    ),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(
                      children: <Widget>[
                        Text("TollTag ID",
                          style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                      ],
                    ),
                    Row(children: <Widget>[
                      Text("DNT.0002345",
                        style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                    ],),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(children: <Widget>[
                      Text("Plate",
                        style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                    ],),
                   Row(children: <Widget>[
                     Text("HSR 0301",
                       style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                   ],),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(children: <Widget>[
                      Text("Lane",
                        style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                    ],),
                    Row(children: <Widget>[
                      Text("5900 Plano Parkway",
                        style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                    ],),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(children: <Widget>[
                      Text("Direction",
                        style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                    ],),
                    Row(children: <Widget>[
                      Text("W",
                        style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                    ],),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(children: <Widget>[
                      Text("Location",
                        style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                    ],),
                   Row(children: <Widget>[
                     Text("1200 Walnut Hill",
                       style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                   ],),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),
                    Row(children: <Widget>[
                      Text("Transaction Type",
                        style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                    ],),
                    Row(children: <Widget>[
                      Text("Toll",
                        style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                    ],),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
    ),
                    Row(children: <Widget>[
                      Text("Amount",
                        style:TextStyle(color: Color.fromRGBO(255, 255, 255,0.7),fontSize: 18.0),),
                    ],),
                    Row(children: <Widget>[
                      Text("-\u0024 1.34",
                        style:TextStyle(color: Colors.white,fontSize: 14.0,height: 1.8),),
                    ],),
                    Divider(
                      color: Color.fromRGBO(255, 255, 255,0.4),
                    ),

                  ],),
            ),
    )
                  ],
                ),

            )
        )
        )
        );
  }
}





















