
import 'package:assignment_11/details.dart';
import 'package:assignment_11/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

 runApp(MaterialApp(debugShowCheckedModeBanner: true,
   home: MyApp(),
 )) ;
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Map<String,dynamic>> list =[
    {
    'name': 'Shaikh Abdul Basit-Abdul Samad',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
  },
    {
      'name': 'Shaikh Mahmood Al Khalil Al-Hussary',
      'picture': 'images/mah.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
    {
      'name': 'Shaikh Mohammad Sidiq -Minshawi',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
    {
      'name': 'Shaikh Maher Al-Muiaiqly',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
    {
      'name': 'Shaikh Abdul Rahman Al-Sudais',
      'picture': 'images/Asodais.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Saudi Arabia'
    },
    {
      'name': 'Shaikh Mishary Rashid Al-Aafasy',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
    {
      'name': 'Shaikh Ahmad Al-Ajmi',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
    {
      'name': 'Shaikh Mohammad Siddiq',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
    {
      'name': 'Shaikh Abdul Samad ',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
    {
      'name': 'Shaikh Salim Al-Hilali',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'Egypt'
    },
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Top 10 Quran's Readers ",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        actions:[PopupMenuButton(onSelected: (values){
         print (values);
       }, style: ButtonStyle(iconSize: WidgetStatePropertyAll(34)),
           itemBuilder: (BuildContext context ){
          return [ PopupMenuItem(value: 'share',child: Row(children: [Text("Share App"),Divider(indent: 10,),Icon(Icons.share)],),),
          PopupMenuItem(value: 'about me',child: Row(children: [Text("About"),Divider(indent: 10,),Icon(Icons.info)],)),
          PopupMenuItem(value: 'Exit',child: Row(children: [Text("Exit"),Divider(indent: 10,),Icon(Icons.exit_to_app)],))];
       }),
       ],),


      body: FractionallySizedBox(heightFactor: 1,
        child: ListView.builder(
          itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              splashColor: Colors.blueGrey,
              title: Text(list[index]['name'],style: TextStyle(color: Colors.purple,fontSize: 18),),
              subtitle: Text(list[index]['country'],style: TextStyle(color: Colors.red,fontSize: 17),),
              leading: CircleAvatar(
                radius: 30,
                  backgroundImage: AssetImage(
               (list[index]['picture']),)),
              trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {return Details(name: list[index]['name'],picture: list[index]['picture'],description: list[index]['description'], country: list[index]['country'],);},));
              },
                  icon:Icon(Icons.arrow_forward,)),
                onTap: (){},
            ),
          );

        },itemCount: list.length,),
      ),
    );
  }
}
