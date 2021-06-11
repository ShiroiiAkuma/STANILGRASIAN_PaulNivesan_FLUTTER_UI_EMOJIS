import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final wordPair = WordPair.random();
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(

        appBar: AppBar(


         // backgroundColor: Colors.white60,
          leading: Icon(

            Icons.menu,
            color: Colors.black,

          ),

          backgroundColor: Colors.transparent,
          elevation: 0.0,


          //ca marche mais j'aime pas
          actions: [

              Container(
              width: 55,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(198, 231, 254, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                    image: ExactAssetImage('assets/tuxedo.png'),
                    fit: BoxFit.fill
                ),
              ),
            ),

          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [


              Padding(

                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20.0),
                child: Text(
                  "SEARCH FOR\nRECIPES",
                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,


                ),


              ),
              SizedBox(height: 4.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Container(
                    //width: 500,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(241, 241, 241, 1),
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: 16),
                        icon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        )

                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(

                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20.0),
                    child: Text(
                      "Recommanded",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal),
                      textAlign: TextAlign.left,


                    ),


                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 233, 198, 1),
                                borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/burger.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Hamburg\n\$21",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Color.fromRGBO(226, 167, 106, 1)),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(194, 227, 254, 1),
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/fries.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Chips\n\$15",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Color.fromRGBO(106, 140, 170, 1)),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(215, 250, 218, 1),
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/doughnut.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Doughnut\n\$13",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.green),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.red[50],
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/cheese.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Cheese\n\$24",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.red),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.purple[50],
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/hotdog.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Hotdog\n\$19",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.purpleAccent),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/pizza.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Pizza\n\$27",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.teal),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.indigo[50],
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/popcorn.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Popcorn\n\$20",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.indigo),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange[50],
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/sandwich.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Sandwich\n\$29",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.deepOrange),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                          child: Container(

                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.brown[50],
                              borderRadius: BorderRadius.circular(20,),


                            ),
                            child: Column(

                              children: [
                                Container(


                                  child: Image.asset('assets/taco.png',
                                    height: 60, width:60 ,

                                  ),
                                  padding:const EdgeInsets.all(15),

                                  decoration: BoxDecoration(

                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),


                                  ),

                                ),
                                Container(

                                  child: Text("Taco\n\$31",

                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.brown),
                                    textAlign: TextAlign.center,


                                  ),
                                )

                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            ),

                          ),

                        ),

                      ],

                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 25, 15, 0),
                            child: Container(
                              child: Text("FEATURED",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),
                              textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                          child: Container(
                            child: Text("COMBO",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal,color: Colors.black.withOpacity(0.2), ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                          child: Container(
                            child: Text("FAVORITES",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal,color: Colors.black.withOpacity(0.2), ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                          child: Container(
                            child: Text("RECOMMANDED",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal,color: Colors.black.withOpacity(0.2), ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                          child: Container(
                            child: Text("ORDER",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal,color: Colors.black.withOpacity(0.2), ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                          child: Container(
                            child: Text("HISTORY",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal,color: Colors.black.withOpacity(0.2), ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //
                  height: 250,

                    child: ListView(
                      scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),

                            child: Container(
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Flexible(
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(

                                            child: Image.asset('assets/hotdog.png',
                                              height: 60, width:60 ,

                                            ),
                                            padding:const EdgeInsets.all(20),
                                            margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),

                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(255, 227, 223, 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),

                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),

                                            child: Column(

                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              //mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(

                                                  child: Text("Delicious hot dog",
                                                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.normal,color: Colors.black87),

                                                  ),


                                                ),
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                  ],
                                                ),
                                                Text.rich(TextSpan(

                                                  children: <TextSpan>[
                                                    new TextSpan(
                                                      text: '\$6 ',
                                                      style: new TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 23,
                                                        decoration: TextDecoration.none,
                                                      ),
                                                    ),
                                                    new TextSpan(
                                                      text: '\$18',
                                                      style: new TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 18,
                                                        decoration: TextDecoration.lineThrough,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    //alignment: Alignment.,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromRGBO(254, 125, 106, 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.6),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size:30,
                                      color: Colors.white,

                                    ),

                                  ),

                                ],

                              ),


                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),

                            child: Container(
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Flexible(
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(

                                            child: Image.asset('assets/pizza.png',
                                              height: 60, width:60 ,

                                            ),
                                            padding:const EdgeInsets.all(20),
                                            margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),

                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[50],
                                              borderRadius: BorderRadius.circular(10),
                                            ),

                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),

                                            child: Column(

                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              //mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(

                                                  child: Text("Delicious hot pizza",
                                                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.normal,color: Colors.black87),

                                                  ),


                                                ),
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                  ],
                                                ),
                                                Text.rich(TextSpan(

                                                  children: <TextSpan>[
                                                    new TextSpan(
                                                      text: '\$15 ',
                                                      style: new TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 23,
                                                        decoration: TextDecoration.none,
                                                      ),
                                                    ),
                                                    new TextSpan(
                                                      text: '\$29',
                                                      style: new TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 18,
                                                        decoration: TextDecoration.lineThrough,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    //alignment: Alignment.,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromRGBO(254, 125, 106, 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.6),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size:30,
                                      color: Colors.white,

                                    ),

                                  ),

                                ],

                              ),


                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),

                            child: Container(
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Flexible(
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(

                                            child: Image.asset('assets/taco.png',
                                              height: 60, width:60 ,

                                            ),
                                            padding:const EdgeInsets.all(20),
                                            margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),

                                            decoration: BoxDecoration(
                                              color: Colors.teal[50],
                                              borderRadius: BorderRadius.circular(10),
                                            ),

                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),

                                            child: Column(

                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              //mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(

                                                  child: Text("Delicious hot taco",
                                                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.normal,color: Colors.black87),

                                                  ),


                                                ),
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                  ],
                                                ),
                                                Text.rich(TextSpan(

                                                  children: <TextSpan>[
                                                    new TextSpan(
                                                      text: '\$16 ',
                                                      style: new TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 23,
                                                        decoration: TextDecoration.none,
                                                      ),
                                                    ),
                                                    new TextSpan(
                                                      text: '\$23',
                                                      style: new TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 18,
                                                        decoration: TextDecoration.lineThrough,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    //alignment: Alignment.,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromRGBO(254, 125, 106, 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.6),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size:30,
                                      color: Colors.white,

                                    ),

                                  ),

                                ],

                              ),


                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),

                            child: Container(
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Flexible(
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(

                                            child: Image.asset('assets/sandwich.png',
                                              height: 60, width:60 ,

                                            ),
                                            padding:const EdgeInsets.all(20),
                                            margin: const EdgeInsets.fromLTRB(10, 30, 0, 0),

                                            decoration: BoxDecoration(
                                              color: Colors.lightGreen[50],
                                              borderRadius: BorderRadius.circular(10),
                                            ),

                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),

                                            child: Column(

                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              //mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(

                                                  child: Text("Hot sandwich",
                                                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.normal,color: Colors.black87),

                                                  ),


                                                ),
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                      size: 20.0,
                                                    ),
                                                  ],
                                                ),
                                                Text.rich(TextSpan(

                                                  children: <TextSpan>[
                                                    new TextSpan(
                                                      text: '\$6 ',
                                                      style: new TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 23,
                                                        decoration: TextDecoration.none,
                                                      ),
                                                    ),
                                                    new TextSpan(
                                                      text: '\$18',
                                                      style: new TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 18,
                                                        decoration: TextDecoration.lineThrough,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),

                                  Container(
                                    height: 50,
                                    width: 50,
                                    //alignment: Alignment.,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      color: Color.fromRGBO(254, 125, 106, 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.6),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 1), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size:30,
                                      color: Colors.white,

                                    ),

                                  ),

                                ],

                              ),


                            ),

                          ),
                        ],

                    ),
                  ),



                ],
              )






            ],
          ),
        ),
      ),

    );
  }
  static const IconData search = IconData(0xe567, fontFamily: 'MaterialIcons');
}

