import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:audioplayers/audioplayers.dart';


class Details extends StatelessWidget {
  final String name;
  final String picture;
  final String description;
  final String country;
  final String link;


    Details({super.key, required this.name, required this.picture,required this.link, required this.description, required this.country});

    final cach =AudioCache();
    final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(),
      body: ListView(
        children: [Column(children:[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(child: Text(name,style: TextStyle(fontSize: 35,

                fontWeight: FontWeight.bold,color: Colors.purple),
            )),
          ),
          Center(child:CircleAvatar(backgroundColor: Colors.green,
                backgroundImage: AssetImage(picture),
                radius: 100,
              )),
              SizedBox(height: 10,),

          Container(width: 480,height: 1,color: Colors.black54,),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(width: double.infinity,height:1000,color: Colors.white,child:
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                  Text(description,style: TextStyle(fontSize: 14,),
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl,)
                ],)
              ),
          ),


          ElevatedButton(onPressed: () async{
            final linkToOpen =Uri.parse(link);
            await launchUrl(linkToOpen, );
            }, child: Text("More",)),



          ElevatedButton(onPressed: (){
           Playsound();
            }, child: Text("Play")),
        ],),
      ])
    );
  }

  void Playsound() async {

    final path = await cach.load("audio/3.mp3");
    player.setSource(AssetSource(path as String));
    await player.play(path as Source);
  }
}
