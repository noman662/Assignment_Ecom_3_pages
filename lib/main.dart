import 'dart:ui';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("MyApp")),
          centerTitle: true,
        ),

        //
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Muhammad Noman", style: TextStyle(color: Colors.orange, fontFamily:'RobotoMono',),),
                accountEmail: Text("Noman.siddique.306@Gmail.com",style: TextStyle(color: Colors.orange,fontFamily:'RobotoMono',),),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset("assets/noman.png"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text("Category"),
                subtitle: Text("select"),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.account_box,),
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Help"),
                subtitle: Text("Customer/Services"),
                trailing: Icon(Icons.thumb_up_alt),
                ),
            ],
          ),
        ),
        //

        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [

          // 


        Container( color: Colors.white70,
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Container(child: Image(image:AssetImage('assets/11lite.jpg'),), height: 90, width: 90,),
          Container(child: Text("Mi 11 Lite 128Gb"),),
          Container(child: ElevatedButton(onPressed: (){}, child: Text("Buy Now")),),
        ],),
          ),


          // 


        Container(color: Colors.white70,
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Container(child: Image(image:AssetImage('assets/i7.jpg'),), height: 90, width: 90,),
          Container(child: Text("HP Core,i7 7th,Gen "),),
          Container(child: ElevatedButton(onPressed: (){}, child: Text("Buy Now")),),

          ],),
            ),


          // 


        Container( color: Colors.white70,
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Container(child: Image(image:AssetImage('assets/MacBookair11.jpg'),), height: 90, width: 90,),
          Container(child: Text("MacBook Air 11"), decoration:BoxDecoration(),),
          Container(child: ElevatedButton(onPressed: (){}, child: Text("Buy Now")),),
          ],),
            ),

          //


          Container( color: Colors.white70,
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          Container( child: Image(image:AssetImage('assets/S21Ultra.jpg'),),height: 80, width: 80,),
          Container(child: Text("Samsung Galaxy S21 Ultra"),),
          Container(child: ElevatedButton(onPressed: (){}, child: Text("Buy Now")),),
        ],),
          ),



          // 


          Container( color: Colors.white70,
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          Container(child: Image(image:AssetImage( 'assets/xs.jpg'), height: 90,width: 90,),),
          Container(child: Text("Iphone Xs 128Gb"),),
          Container(child: ElevatedButton(onPressed: (){}, child: Text("Buy Now")),),

        ],),
         ),

      ], ),



      //


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent, 
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          );
        },
        child: Icon(Icons.login),
        //
      ),
    );
  }
}
