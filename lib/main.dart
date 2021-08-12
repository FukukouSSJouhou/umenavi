import 'package:UMENAVI/activities/AboutSourceCode.dart';
import 'package:UMENAVI/activities/SchedulePage.dart';
import 'package:UMENAVI/activities/admin/Check_CodePage.dart';
import 'package:UMENAVI/activities/admin/adminmain.dart';
import 'package:UMENAVI/activities/helps/HelpMainPage.dart';
import 'package:UMENAVI/activities/news/News.dart';
import 'package:UMENAVI/activities/vote/VoteMain.dart';
import 'package:UMENAVI/icons/umenaviicon1_icons.dart';
import 'package:UMENAVI/themes/ThemeModeNotifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import "activities/schoolmap.dart";
import 'activities/settings/Settings.dart';
import "activities/stage_show.dart";
import "activities/umeyoko.dart";
import 'activities/miniGame.dart';
import "widgets/CustomAppBar.dart";
import "activities/SecretPage.dart";
import 'package:universal_platform/universal_platform.dart';
import "web/LoadingClass.dart"
  if (dart.library.io) "web/webLoading_stub.dart"
  if (dart.library.js) "web/webLoading.dart";

String applicationName= "UMENAVI";
const String applicationVersion= "Beta 0.0.2.1 " + String.fromEnvironment("APPVER",defaultValue:"NOTSETVER");
String applicationLegalese="2021 Fukushima High School SS club Jouhouhan";
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final prefs =await SharedPreferences.getInstance();
  final themeModeID=prefs.getInt(ThemeModeNotifier.selectedThemeKey);
  return runApp(
    ChangeNotifierProvider(create:(_)=>ThemeModeNotifier(id: themeModeID),
    child:const  MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeModeNotifier=Provider.of<ThemeModeNotifier>(context);
    const locale = Locale("ja", "JP");
    return MaterialApp(
      title: 'UMENAVI',
      darkTheme: themeModeNotifier.darkThemeData,
      theme:themeModeNotifier.themeData,

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
    LoadingClass.RemoveHeader();
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
            _counter=0;
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
class _HomeKunItemBuilder extends StatelessWidget{
  final int index;
  final BuildContext context;
  _HomeKunItemBuilder({Key key,@required this.index,@required this.context})
    :assert(index != null && context != null),
    super(key: key);

  final _google_signin  = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);
  GoogleSignInAccount googleUser;
  GoogleSignInAuthentication googleAuth;
  AuthCredential credential;
  final _auth=FirebaseAuth.instance;
  UserCredential usercre;
  User fbuser;
  @override
  Widget build(BuildContext context){
    switch(index){
      case 0:
      return
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
                            Text("開発者からのお知らせ",style: TextStyle(fontSize: 16,))
                          ],
                        )
                    )                    ,
                    Text("アンケートにご協力ください",style:TextStyle(fontSize: 30))],
                )
            )
        );
        break;
      case 1:
        return
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
                      Icon(Umenaviicon1.iconmonstr_map_2_240,size:125,),
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
          );
        break;
      case 2:
        return
          InkWell(
              onTap: (){
                HapticFeedback.heavyImpact();
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => SchedulePage()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/icon_158931_256.svg",semanticsLabel: "stage",),*/
                      Icon(Icons.event_note_outlined,size:125),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("スケジュール"),
                            subtitle: Text("当日のスケジュールが確認できます"),
                          )
                      )
                    ],
                  )
              )
          );
        break;
      case 3:
        return
          InkWell(
              onTap: (){
                HapticFeedback.heavyImpact();
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => StageShowPage()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/icon_158931_256.svg",semanticsLabel: "stage",),*/
                      Icon(Umenaviicon1.icon_158931_256,size:125),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("ステージ発表"),
                            subtitle: Text("発表の内容が表示できます"),
                          )
                      )
                    ],
                  )
              )
          );
        break;
      case 4:
        return
          InkWell(
              onTap: () async{
                HapticFeedback.heavyImpact();
                if(true) {
                  Navigator.push(context,MaterialPageRoute(builder: (con1) => VoteMainPage(
                    auth: _auth,google_signin: _google_signin,
                  )));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("この機能は意図的に無効化されています"),)
                  );
                }
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      /*SvgPicture.asset("images/icon/icon_111651_256.svg",semanticsLabel: "UMEYOKO",),*/
                      Icon(Umenaviicon1.icon_111651_256,size:125),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("事後アンケート"),
                            subtitle: Text("事後アンケート"),
                          )
                      )
                    ],
                  )
              )
          );
        break;
  }
  }
}
class HomeKunPageState extends StatelessWidget{
  static const List<StaggeredTile> _Tiles=[
    StaggeredTile.count(6, 2),
    StaggeredTile.count(3,4),
    StaggeredTile.count(3,4),
    StaggeredTile.count(3,4),
    StaggeredTile.count(3,4),
  ];
  @override
    Widget build(BuildContext context){
      return StaggeredGridView.countBuilder(
          crossAxisCount: 6,
          itemCount:5,
          itemBuilder: (BuildContext context,int index){
            return _HomeKunItemBuilder(index: index,context: context,);
          },
          staggeredTileBuilder: (int index){
            int _tIndex=index % _Tiles.length;
            return _Tiles[_tIndex];
          },
      );
    }
}
class OtherPageState extends StatelessWidget{
  final _google_signin  = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);
  GoogleSignInAccount googleUser;
  GoogleSignInAuthentication googleAuth;
  AuthCredential credential;
  final _auth=FirebaseAuth.instance;
  UserCredential usercre;
  User fbuser;
  Future<SharedPreferences> _get_prefs_int() async{
    return await SharedPreferences.getInstance();
  }
  @override
  Widget build(BuildContext context){
    return ListView(
      children: <Widget>[
        ListTile(
          leading:Icon(Icons.settings),
          title:Text("Settings"),
          subtitle: Text("アプリケーション設定"),
          onTap: () {
            HapticFeedback.heavyImpact();
            Navigator.push(context,MaterialPageRoute(builder: (conkun) => SettingsPage()));
          },
        ),
        ListTile(
          leading:Icon(Icons.help) ,
          title:Text("Help"),
          subtitle:Text("Help"),
          onTap: () async{
            HapticFeedback.heavyImpact();
            await launch("https://fukukoussjouhou.github.io/umenavi_help/");
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title:Text("About"),
          subtitle:Text("About this App"),
          onTap:(){
            HapticFeedback.heavyImpact();
            showLicensePage(
              context:context,
              applicationName: applicationName,
              applicationVersion: applicationVersion,
              //applicationIcon: FlutterLogo(),
              applicationIcon: SvgPicture.asset("images/icon/iconumenavi.svg",height: 320,width: 320,),
              applicationLegalese: applicationLegalese,
            );
          }
        ),
        ListTile(
          leading: Icon(Icons.description),
          title:Text("About Source Code"),
          subtitle: Text("About Source Code"),
          onTap:() async{
            HapticFeedback.heavyImpact();
            await launch("https://fukukoussjouhou.github.io/umenavi_help/");
          }
        ),
        FutureBuilder(
          future:_get_prefs_int(),
          builder:(BuildContext context22,AsyncSnapshot<SharedPreferences> snapshot){
            if(snapshot.hasData){
              SharedPreferences sprekun=snapshot.data;
              bool isenabled_secret=sprekun.getBool("secret_enabled") ?? false;
              if(isenabled_secret == true){
                return ListTile(
                    leading: Icon(Icons.room_preferences_outlined),
                    title:Text("Secret Menu"),
                    subtitle: Text("Secret Menu"),
                    onTap:() async{
                      HapticFeedback.heavyImpact();
                      Navigator.push(context, MaterialPageRoute(builder: (_) => new AdminMainPage(google_signin: _google_signin,auth: _auth,)));
                    }
                );
              }else{
                return Container();
              }
            }else{
              return Container();
            }
          }
        )
      ],
    );
  }
}