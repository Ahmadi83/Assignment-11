import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Details extends StatelessWidget {
  final String name;
  final String picture;
  final String description;
  final String country;
  final url='https://www.google.com/';

  const  Details({super.key, required this.name, required this.picture, required this.description, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [Column(children:[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(child: Text(name,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
          ),
          Center(child:CircleAvatar(
                backgroundImage: AssetImage(picture),
                radius: 100,
              )),
              SizedBox(height: 10,),

          Container(width: 480,height: 1,color: Colors.black54,),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(width: double.infinity,height:1700,color: Colors.white,child:
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text("$name",style: TextStyle(fontSize: 30,
                  ),),
                  Text(description,)
                ],)
              ),
          ),


          ElevatedButton(onPressed: () async{
            final linkToOpen =Uri.parse(url);
            await launchUrl(linkToOpen, );
            }, child: Text("More"))
        ],),
      ])
    );
  }
}
