import 'package:assignment_11/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

 runApp(MaterialApp(
   home: MyApp1(),
 )) ;
}

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 1),(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {return
      MyApp();
    },));});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star,size: 270,color: Colors.yellow,),
            Text("Top 10",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
            Text("Version 0.1.1",style: TextStyle(fontSize: 30),),

        ],),
      )
    );
  }
}
