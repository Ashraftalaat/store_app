import 'package:flutter/material.dart';
//المكتبة الخاصة بتغيير الخط
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //لازلة العلامة الحمراء اللي من فوق
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        secondaryHeaderColor: kPrimaryColor,
      ),
      // Arabic RTLالكود الخاص بتغيير الخط الي اليمين
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
      home: const HomeScreen(),
    );
  }
}
