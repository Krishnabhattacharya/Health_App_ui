import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_app_ui/page/home.dart';
import 'package:health_app_ui/page/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorSchemeSeed:const Color.fromARGB(255, 69, 95, 201),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(Theme.of(context).textTheme),useMaterial3: true ),
       home:const welcome() ,
     );
  }
}

