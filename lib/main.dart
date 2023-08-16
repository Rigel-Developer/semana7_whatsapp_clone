import 'package:flutter/material.dart';
import 'package:semana7_whatsapp_clone/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color: Color(0xff075E54),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff25D366),
        ),
      ),
      home: const HomePage(),
    );
  }
}
