
import 'package:assignment_11/details.dart';
import 'package:assignment_11/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

 runApp(MaterialApp(debugShowCheckedModeBanner: false,
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
    'name': 'شیخ عبدالباسط',
      'picture': 'images/basit.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'مصر'
  },
    {
      'name': 'شیخ محمود الخلیل ',
      'picture': 'images/mah.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'مصر'
    },
    {
      'name': ' شیخ سعد الغامدی ',
      'picture': 'images/ghamedi.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'عربستان سعودی'
    },
    {
      'name': 'شیخ ماهر المعیقلی',
      'picture': 'images/maher1.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'عربستان سعودی'
    },
    {
      'name': 'شیخ عبدالرحمن السدیس',
      'picture': 'images/Asodais.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'عربستان سعودی'
    },
    {
      'name': 'شیخ راشد العفاسی',
      'picture': 'images/Afasi.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'کویت'
    },
    {
      'name': 'شیخ احمد العجمی',
      'picture': 'images/ajami.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'عربستان سعودی'
    },
    {
      'name': 'شیخ مصطفی اسماعیل',
      'picture': 'images/esmaeil.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'مصر'
    },
    {
      'name': 'شیخ طارق جمیل ',
      'picture': 'images/tareq.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'پاکستان'
    },
    {
      'name': 'شیخ سلیم الهلالی',
      'picture': 'images/salim.jpg',
      'description': "Abdul rahman his last name is al Sodais",
      'country': 'یمن'
    },
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey
      ,
      appBar: AppBar(
        backgroundColor: Colors.green,
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
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
              splashColor: Colors.blueGrey,
              title: Text(list[index]['name'],style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.w600),),
              subtitle: Text(list[index]['country'],style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.bold),),
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
