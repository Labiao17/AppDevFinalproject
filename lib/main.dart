import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/admin_screen.dart';

void main() {
  runApp(PawRescueApp());
}

class PawRescueApp extends StatelessWidget {
  const PawRescueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PawRescue',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Color(0xFFFFF7F0),
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.orange,
        elevation: 0,
        centerTitle: true,),  
       ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/admin': (context) => AdminScreen(),
      },
    );
  }
}