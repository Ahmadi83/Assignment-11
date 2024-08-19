import 'package:assignment_11/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){

 runApp(MaterialApp(debugShowCheckedModeBanner: false,
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
    Future.delayed(Duration(seconds: 5),
            (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {return
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
            CircleAvatar(
              radius: 170,
              backgroundImage: AssetImage('images/app1.jpg'),
            ),

            SizedBox(height: 30,),
            
            Text("Top 10 Quran's Reciter",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Text("Version 0.1.1",style: TextStyle(fontSize: 30),),

        ],),
      )
    );
  }
}
