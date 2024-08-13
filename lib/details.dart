import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Details extends StatelessWidget {
  final String name;
  final String picture;
  final String description;
  final String country;

  const  Details({super.key, required this.name, required this.picture, required this.description, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children:[
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Center(child: Text(name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        ),
        Center(child:CircleAvatar(
              backgroundImage: AssetImage(picture),
              radius: 100,
            )),
            SizedBox(height: 10,),

        Container(width: 480,height: 1,color: Colors.black54,),
        Center(child: Text(description))
      ],)
    );
  }
}
