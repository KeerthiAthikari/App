import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(13, 67, 148,1),
      ),
      home: FilterTransaction(title: 'Flutter Demo Home Page'),
    );
  }
}
class FilterTransaction extends StatefulWidget {
  FilterTransaction({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _FilterTransaction createState() => _FilterTransaction();
}
class Item {
  const Item(this.name);
  final String name;

}
class _FilterTransaction extends State<FilterTransaction> {
  bool Toll = false;
  bool NonToll = false;
 var _currentItemSelected='2345';
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('1234'),
    const Item('3456'),
    const Item('4567'),
    const Item('6789'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //title: Text("Filter Transactions",style: TextStyle(fontSize: 28.0,),),
            title:  Center(child:  Text("Filter Transactions", textAlign: TextAlign.center
                ,style: TextStyle(fontSize: 28.0,))),
          backgroundColor: Colors.indigo[900],
          actions: <Widget>[
        IconButton(
        icon: Icon(
          Icons.clear,
          color: Colors.white,
          size: 40.0,
        )
        )
        ]
        ),
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/Image 4 (1).png"),
    fit: BoxFit.cover,
    ),
    ),
          child:SingleChildScrollView(
    child:Container(
    padding:  EdgeInsets.only(left: 25,top: 30,right: 25,bottom: 200),
    child: Column(
      children: <Widget>[
        Row(
    children: <Widget>[
          Text("Select Date",
            style:TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
    ],
    ),
        SizedBox(height: 10.0,),
        TextField(
         // keyboardType: TextInputType.datetime,
          decoration:  InputDecoration(
            suffixIcon:  IconButton(icon:new Icon(Icons.calendar_today),color: Colors.black,onPressed: () => showDatePicker(
              context: context,
              initialDate:  DateTime.now(),
              firstDate:
              DateTime.now().subtract( Duration(days: 30)),
              lastDate:  DateTime.now().add( Duration(days: 30)),
            ),
            ),
            hintText: 'From Date-To Date',
            hintStyle: TextStyle(fontSize: 17.0, color: Colors.black,fontWeight: FontWeight.normal),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: UnderlineInputBorder(borderSide:BorderSide(color: Colors.white,style: BorderStyle.none),borderRadius: BorderRadius.all(Radius.circular(5.0))),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          ),
        ),
        SizedBox(height: 15.0,),
        Row(
                children: <Widget>[
                  Text("Toll Type",
                    style:TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold,),),
                ],
              ),
        SizedBox(height: 5.0),
        new Align(
          alignment:const Alignment(0.0, -0.2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: Toll,
                    onChanged: (bool value) {
                      setState(() {
                        Toll = value;
                      });
                    },
                  ),
                  Text("Toll",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.normal),),
                ],
              ),
              SizedBox(width: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: NonToll,
                    onChanged: (bool value) {
                      setState(() {
                        NonToll = value;
                      });
                      },
                  ),
                  Text("Non-Toll",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.normal),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 13.0),
        Row(
          children: <Widget>[
            Text("Plate No",
              style:TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 7.0),
 Container(
          child:new  Column(
              children : <Widget>[
                SizedBox(height: 10),
                Container(width: 370.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),

          alignment:const Alignment(-0.8,-1),

          child: DropdownButton<Item>(
            iconSize: 35.0,
            hint: Text("Select Plate No",style: TextStyle(fontSize: 18.0, color: Colors.black,fontWeight: FontWeight.normal,),),
            value: selectedUser,
            onChanged: (Item Value) {
              setState(() {
                selectedUser = Value;
              });
            },
            items: users.map((Item user) {
              return  DropdownMenuItem<Item>(
                value: user,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Text(
                      user.name,
                      style:  TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ]

    ),

 ),
        SizedBox(height: 20.0,),
        MaterialButton(
          height: 45.0,
          minWidth: 360.0,
          color:Color.fromRGBO(244, 120,54,1),
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)),
          child: new Text("Apply Filter",style: TextStyle(fontSize: 18.0,),),
          onPressed: () => {},
          splashColor: Colors.white,
        )
            ]
        )
    )
        ),
        )

    );

  }
  }