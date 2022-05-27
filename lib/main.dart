import 'package:flutter/material.dart';
import 'package:flutter_app/travelApp/_screens/category_detail.dart';
import 'package:flutter_app/travelApp/_screens/home_s.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'questions/questions.dart';

main() {
  runApp(MaterialApp(
    title: 'Numa Coffee Beans',
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('ar', ''), // English, no country code
    ],
    theme: ThemeData(
        primaryColor: Colors.brown[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
            )),
    // home: HomeS(),
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomeS(),
      CategoryDetail.categoryDetailScreen: (context) => CategoryDetail()
    },
  ));
}
