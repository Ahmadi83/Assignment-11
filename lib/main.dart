
import 'package:assignment_11/details.dart';
import 'package:assignment_11/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
      'description': '''
       عبدالرحمن السدیس، در سال ۱۹۶۰ در ریاض، عربستان سعودی به دنیا آمد و امام جماعت مقدس‌ترین مسجد مسلمانان در مکه، یعنی مسجد الحرام، می‌باشد.
        او یک قاری قرآن به روش حفظ است. صدای او در میان تلاوت کنندگان قرآن شناخته شده و معروف است. هم‌اکنون رئیس کمیته مدیریت دو مسجد مقدس (مکه و مدینه) است
      ابوعبدالعزیز عبدالرحمن بن عبدالعزیز بن عبدالله بن محمد بن عبدالعزیز بن محمد بن عبدالله السدیس، نسب وی به قبیله عنزه یکی از قبایل مشهور بکیره از مناطق قصیم می‌باشد. در سال ۱۹۶۰ در شهر ریاض پایتخت کشور عربستان سعودی دیده به جهان گشود. و در سن 12 سالگی با نظارت شیخ عبدالرحمن آل فریان موفق به حفظ کامل قرآن کریم گردید، و آخرین کسی که در نزدشان قرآن را خواندند شیخ محمد علی حسان بودند. وی در دبستان ابن حارث و سپس در مؤسسه علوم ریاض تحصیل کرد، جایی که در سال ۱۹۷۹ با درجه عالی فارغ‌التحصیل شد. بعداً به آکادمی اسلامی ریاض پیوست و در سال ۱۹۸۲ با مدرک شریعت فارغ‌التحصیل شد. سال ۱۹۸۷ کارشناسی ارشد را در رشته شریعت اسلامی در دانشگاه اسلامی امام محمد ابن سعود گذراند و دکتری خود را از دانشگاه ام‌القری در سال ۱۹۹۵ گرفت. در زمان گرفتن دکتری به عنوان استاد در آنجا مشغول تدریس بو
      فعالیت‌ها:
      پس فارغ التحصیل شدن از بخش اصول فقه به‌عنوان استادیار دانشکده شریعت انتخاب شدند.
به‌عنوان امام و خطیب در چند مسجد شهر ریاض فعالیت نمودن که آخرین آنها مسجد جامع شیخ عبدالرزاق عفیفی رحمه الله بود.
در سال ۱۴۰۴ هـ ق طی حکمی ایشان به‌عنوان امام و خطیب مسجدالحرام تعیین شدند.
در سال ۱۴۰۸ هـ ق موفق به اخذ گواهی فوق لیسانس از دانشگاه امام محمد بن سعود با درجه ممتاز گشتند که استادان مشاور ایشان در نوشتن پایان نامه، شیخ عبدالرزاق عفیفی رحمه الله و دکتر عبدالرحمن الدویش بودند.
استاد بخش دادگستری و قضاوت دانشکده شریعت دانشگاه ام القری مکه انتخاب شدند.
شیخ عبدالرحمن السدیس در سال ۱۴۱۶ هـ ق موفق به اخذ گواهی دکتری از دانشکده شریعت دانشگاه ام القری مکه گردید که استاد مشاور ایشان در نگاشتن پایان نامه، شیخ احمد فهمی ابوسنه بودند.
استادیار دانشکده شریعت دانشگاه ام القری مشغول به فعالیت شدند که همزمان با آن به امامت و خطابت در مسجد الحرام می پردازد.
وی عضو چندین هیئت و مؤسسه علمی و دعوی و خیری می‌باشد و نیز حضور پررنگی در رسانه‌های جمعی داخلی و خارجی دارد، همچنین دارای اهتمام ویژه‌ای به مسائل علمی از طریق تدریس و ارائه بحث‌های علمی و تحقیقات مختلف می‌باشد.
دیدگاه‌ها
السدیس در مصاحبه با شبکه خبر سعودی طی سفر خود در آمریکا گفته بود:
کشورش به رهبری ملک سلمان و آمریکا به ریاست دونالد ترامپ به عنوان دو قطب تأثیرگذار جهان و انسانیت را به سوی سواحل امنیت، ثبات، صلح و آرامش هدایت می‌کنند. این اظهار نظر از سوی چندین شخصیت شناخته شده و کاربران فعال شبکه‌های اجتماعی مورد انتقاد قرار گرفت. عبدالله شمری این سخنان السدیس در مورد آمریکا را مورد سخره گرفت و گفت بزرگترین دلیل این سخن کاری است که آمریکا در عراق و افغانستان از قبیل کشتار، تخریب و تعرض انجام داد و حمایت از صهیونیست‌ها در اشغال مقدسات مسلمانان. ترکی شلهوب یک ویدیو از جرایم نیروهای آمریکایی در عراق منتشر کرد که در زیرنویس آن نوشته شده بود که این همان دولتی است که السدیس می‌گوید عالم را به سوی صلح رهبری می‌کند. تاجر السر عثمان سخنان السدیس را در مورد آمریکا چنین توصیف کرد: «... تلاش کاهنانه برای پاک کردن پرونده سیاه آمریکا در عراق، افغانستان و فلسطین»

رئیس کل اداره امور حرمین شریفین با بیان اینکه آنچه در غزه رخ می‌دهد یک فتنه است گفت: مسلمانان نباید به کاری که حق ندارند وارد آن شوند.
      ''',
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
