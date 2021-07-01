import 'package:UMENAVI/activities/AboutSourceCode.dart';
import 'package:UMENAVI/activities/news/News.dart';
import 'package:UMENAVI/icons/umenaviicon1_icons.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';
import "activities/schoolmap.dart";
import 'activities/settings/Settings.dart';
import "activities/stage_show.dart";
import "activities/umeyoko.dart";
import 'activities/miniGame.dart';
import "widgets/CustomAppBar.dart";
import "activities/SecretPage.dart";
String applicationName= "UMENAVI";
const String applicationVersion= "Alpha 0.0.0.1" + String.fromEnvironment("APPVER",defaultValue:"NOTSETVER");
String applicationLegalese="2021 Fukushima High School SS club Jouhouhan";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const locale = Locale("ja", "JP");
    return MaterialApp(
      title: 'UMENAVI',
      darkTheme: ThemeData.dark(),
      theme:ThemeData(
        primaryColor: Color.fromRGBO(41, 30, 161,1),
      ),

      locale: locale,
      localizationsDelegates:  [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:  [
        locale,
      ],
      home: MyHomePage(title: 'UMENAVI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  static List<Widget> _pageList=[
    HomeKunPageState(),
    NewsMainPage(),
    MiniGamePage(),
    OtherPageState()
  ];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  PageController _pageController;
  Duration pageTurnDuration = Duration(milliseconds: 500);
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,


    );
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: CustomAppBar(
        appBar:  AppBar(

          //title: Text(widget.title),
          title: Row(
            children: <Widget>[
              SvgPicture.asset("images/icon/iconumenavi.svg",height: 50,width: 50,),
              Container(
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child:Text(widget.title)
              )
            ],
          ),
        ),
        onTap: (){
          _incrementCounter();
          if(_counter > 24){
            HapticFeedback.heavyImpact();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Secret Tab!!"),

              )
            );
            Navigator.push(context,MaterialPageRoute(builder: (conkun) => SecretPage()));
          }
        },
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      
      /*body:_pageList[_selectedIndex],*/
      body:PageView(
        controller: _pageController,
        onPageChanged: _onItemTapped,
        children: _pageList,
        physics:  NeverScrollableScrollPhysics(

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title:Text("Home")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.feed_outlined),
              title:Text("News")
          ),
          BottomNavigationBarItem(
            icon:Icon(Umenaviicon1.games),
            title:Text("Games")
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.devices_other),
            title:Text("Other")
          )
        ],
        type:BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap:(index) {
          HapticFeedback.heavyImpact();
          _selectedIndex=index;
          _pageController.jumpToPage(index);
        },
      ),

    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
class HomeKunPageState extends StatelessWidget{
  @override
    Widget build(BuildContext context){
      return ListView(
        children: [

          InkWell(
              onTap: () async {
                HapticFeedback.heavyImpact();
                //Navigator.push(context,MaterialPageRoute(builder: (conkun) => SchoolMapPage()));
                await launch("https://docs.google.com/forms/d/e/1FAIpQLSevkohazWRP17pnUbshVeOMaU_BWhjGVCGZ6ohZOrFn8uQQ7w/viewform?usp=sf_link ");
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/iconmonstr-map-2-240.svg",
                    semanticsLabel: 'map',),*/
                      /*Container(
                          width: double.infinity,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[Text("文化祭開始まであと",style:TextStyle(
                        fontSize: 30,

                      ),textAlign:TextAlign.left)]
                      ))

                       */
                    Container(
                      width: double.infinity,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("開発者からのお知らせ",style: TextStyle(fontSize: 25),)
                        ],
                      )
                    )                    ,
                    Text("アンケートにご協力ください",style:TextStyle(fontSize: 60))],
                  )
              )
          ),
          InkWell(
              onTap: (){
                HapticFeedback.heavyImpact();
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => SchoolMapPage()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/iconmonstr-map-2-240.svg",
                    semanticsLabel: 'map',),*/
                      Icon(Umenaviicon1.iconmonstr_map_2_240,size:250,),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("校内マップ"),
                            subtitle: Text("校内マップが表示できます"),
                          )
                      )
                    ],
                  )
              )
          ),
          InkWell(
              onTap: (){
                HapticFeedback.heavyImpact();
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => StageShowPage()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/icon_158931_256.svg",semanticsLabel: "stage",),*/
                      Icon(Umenaviicon1.icon_158931_256,size:250),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("ステージ発表"),
                            subtitle: Text("発表の予定が表示できます"),
                          )
                      )
                    ],
                  )
              )
          ),          InkWell(
              onTap: (){
                HapticFeedback.heavyImpact();
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => UmeyokoPage()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/icon_111651_256.svg",semanticsLabel: "UMEYOKO",),*/
                      Icon(Umenaviicon1.icon_111651_256,size:250),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("ウメ横"),
                            subtitle: Text("飯の値段が書いてあります。"),
                          )
                      )
                    ],
                  )
              )
          ),
        ],
      );
    }
}
class OtherPageState extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
      children: <Widget>[
        InkWell(
            onTap: (){
              HapticFeedback.heavyImpact();
              Navigator.push(context,MaterialPageRoute(builder: (b) => SettingsPage()));
            },
            child:Card(
                child:Column(
                  children: <Widget>[
                    Icon(Icons.settings,size:250),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        child:ListTile(
                          title:Text("Settings"),
                          subtitle: Text("設定"),
                        )
                    ),
                  ],
                )
            )
        ),
        InkWell(
            onTap: (){
              HapticFeedback.heavyImpact();
              showLicensePage(
                context:context,
                applicationName: applicationName,
                applicationVersion: applicationVersion,
                //applicationIcon: FlutterLogo(),
                applicationIcon: SvgPicture.asset("images/icon/iconumenavi.svg",height: 320,width: 320,),
                applicationLegalese: applicationLegalese,
              );
            },
            child:Card(
                child:Column(
                  children: <Widget>[
                    SvgPicture.asset("images/icon/iconumenavi.svg",height: 320,width: 320),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        child:ListTile(
                          title:Text("About"),
                          subtitle: Text("このアプリについて"),
                        )
                    ),
                  ],
                )
            )
        ),
        InkWell(
            onTap: (){
              HapticFeedback.heavyImpact();
              Navigator.push(context,MaterialPageRoute(builder: (conkun) => AboutSourceCodePage()));
            },
            child:Card(
                child:Column(
                  children: <Widget>[
                    //Icon(Umenaviicon1.icon_111651_256,size:250),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        child:ListTile(
                          title:Text("About SourceCode"),
                          subtitle: Text("ソースコードについて"),
                        )
                    ),
                  ],
                )
            )
        )
      ],
    );
  }
}