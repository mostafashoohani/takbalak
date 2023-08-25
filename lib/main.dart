import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:takbalak/home.dart';
import 'package:takbalak/spalh.dart';





void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // tanzimat rang antn va rang batrio ina
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark));
  runApp(_TAK());
}

class _TAK extends StatefulWidget {
  const _TAK({super.key});

  @override
  State<_TAK> createState() => __TAKState();
}

class __TAKState extends State<_TAK> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Localizations Sample App',
  localizationsDelegates: const [
    // acolizar kardim porojaro
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('fa'), // farsi
  ],
  // font style be sh dadim
      theme: ThemeData(
        fontFamily: 'DANA',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'DANA',
            fontSize: 16,
            fontWeight: FontWeight.w700),
          bodyText1: TextStyle(
            fontFamily: 'DANA',
            fontSize: 13,
            fontWeight: FontWeight.w300),
          headline2: TextStyle(
            fontFamily: 'DANA',
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w300),
            headline3: TextStyle(
            fontFamily: 'DANA',
            fontSize: 14,
            color: Colors.red,
            fontWeight: FontWeight.w500),
            headline4: TextStyle(
            fontFamily: 'DANA',
            fontSize: 14,
            color: Colors.green,
            fontWeight: FontWeight.w700),
            
            
        ),
      ),
        debugShowCheckedModeBanner: false,
        // rahtim safhi asplsh
      home: spalsh()
    );
  }
} 
    