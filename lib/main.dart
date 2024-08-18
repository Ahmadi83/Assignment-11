
import 'package:assignment_11/details.dart';
import 'package:assignment_11/texts_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'About.dart';
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
      'description': "$abdulbasit",
      'country': 'مصر',
      'link': "https://fa.wikipedia.org/wiki/%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%A8%D8%A7%D8%B3%D8%B7_%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B5%D9%85%D8%AF",
  },
    {
      'name': 'شیخ محمود الخلیل ',
      'picture': 'images/mah.jpg',
      'description': "$mahmood",
      'country': 'مصر',
      'link': "https://fa.wikipedia.org/wiki/%D9%85%D8%AD%D9%85%D9%88%D8%AF_%D8%AE%D9%84%DB%8C%D9%84_%D8%A7%D9%84%D8%AD%D8%B5%D8%B1%DB%8C",

    },
    {
      'name': ' شیخ سعد الغامدی ',
      'picture': 'images/ghamedi.jpg',
      'description': "$Ghamedi",
      'country': 'عربستان سعودی',
      'link': "http://jtjask.blogfa.com/post/4630/%d9%82%d8%a7%d8%b1%db%8c-%d9%85%d8%b4%d9%87%d9%88%d8%b1%d8%9b-%d8%b4%db%8c%d8%ae-%d8%af%da%a9%d8%aa%d8%b1-%d8%b3%d8%b9%d8%af-%d8%a7%d9%84%d8%ba%d8%a7%d9%85%d8%af%db%8c",
    },
    {
      'name': 'شیخ ماهر المعیقلی',
      'picture': 'images/maher.jpg',
      'description': "$Maher_moeqly",
      'country': 'عربستان سعودی',
      'link': "https://fa.wikipedia.org/wiki/%D9%85%D8%A7%D9%87%D8%B1_%D8%A7%D9%84%D9%85%D8%B9%DB%8C%D9%82%D9%84%DB%8C",
    },
    {
      'name': 'شیخ عبدالرحمن السدیس',
      'picture': 'images/Asodais.jpg',
      'description': '$abdulrahmanAlsodais',
      'country': 'عربستان سعودی',
      'link': "https://fa.wikipedia.org/wiki/%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B1%D8%AD%D9%85%D9%86_%D8%A7%D9%84%D8%B3%D8%AF%DB%8C%D8%B3",
    },
    {
      'name': 'شیخ راشد العفاسی',
      'picture': 'images/Afasi.jpg',
      'description': "$Rashed_Afasi",
      'country': 'کویت',
      'link': "https://vaislamah.com/%D8%B2%D9%86%D8%AF%DA%AF%DB%8C%D9%86%D8%A7%D9%85%D9%87-%D8%B4%DB%8C%D8%AE-%D9%85%D8%B4%D8%A7%D8%B1%DB%8C-%D8%A8%D9%86-%D8%B1%D8%A7%D8%B4%D8%AF-%D8%A7%D9%84%D8%B9%D9%81%D8%A7%D8%B3%DB%8C",
    },
    {
      'name': 'شیخ احمد العجمی',
      'picture': 'images/ajami.jpg',
      'description': "$ahmad_ajami",
      'country': 'عربستان سعودی',
      'link': "https://vaislamah.com/%D8%B2%D9%86%D8%AF%DA%AF%DB%8C%D9%86%D8%A7%D9%85%D9%87-%D8%A7%D8%AD%D9%85%D8%AF%D8%A8%D9%86-%D8%B9%D8%AC%D9%85%DB%8C",
    },
    {
      'name': 'شیخ مصطفی اسماعیل',
      'picture': 'images/esmaeil.jpg',
      'description': "$Mostafa",
      'country': 'مصر',
      'link': "http://mobtakerejavan.blogfa.com/page/zmostafaesmaeel.aspx",
    },
    {
      'name': 'ابوبکر شاطری ',
      'picture': 'images/shateri.jpg',
      'description': "$shateri",
      'country': 'عربستان سعودی',
      'link': "https://www.charkhoneh.com/content/930524107",
    },
    {
      'name': 'استاد پرهیزگار',
      'picture': 'images/parhezgar.jpg',
      'description': "$shahrear",
      'country': 'ایران',
      'link': "https://fa.wikipedia.org/wiki/%D8%B4%D9%87%D8%B1%DB%8C%D8%A7%D8%B1_%D9%BE%D8%B1%D9%87%DB%8C%D8%B2%DA%AF%D8%A7%D8%B1",
    },
  ];



  Aboutme(){
    Navigator.push(context, MaterialPageRoute(builder: (context){return About();}));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white
      ,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Top 10 Quran's Readers ",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        actions:[PopupMenuButton(onSelected: (values){

          switch(values){
            case 'share':
              Share.share('Top ten App');
              break;
            case 'About':
              Aboutme();
              break;
            case 'Exit':
              SystemNavigator.pop();
              break;
          }
       }, style: ButtonStyle(iconSize: WidgetStatePropertyAll(34)),
           itemBuilder: (BuildContext context ){
          return [ PopupMenuItem(value: 'share',child: Row(children: [Text("Share App"),Divider(indent: 10,),Icon(Icons.share)],),),
          PopupMenuItem(value: 'About',child: Row(children: [Text("About"),Divider(indent: 10,),Icon(Icons.info)],)),
          PopupMenuItem(value: 'Exit',child: Row(children: [Text("Exit"),Divider(indent: 10,),Icon(Icons.exit_to_app)],))];
       }),
       ],),


      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(itemCount: list.length,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                    image:DecorationImage(image: AssetImage(list[index]['picture']),fit: BoxFit.cover ),
                color: Colors.greenAccent),

                    height: 150,width: 280,
                 ),
              );
            },),
          ),


          
              
             Expanded(
               child: ListView.builder(
                itemBuilder: (context, index) {Axis.horizontal;
                return Card(color: Colors.greenAccent,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return Details(name: list[index]['name'],picture: list[index]['picture'],
                            description: list[index]['description'], country: list[index]['country'],link:list[index]['link']);},));
                    },
                        icon:Icon(Icons.arrow_forward,)),
                      onTap: (){},
                  ),
                );
               
                           },itemCount: list.length,),
             ),

        ],
      ),
    );
  }
}
