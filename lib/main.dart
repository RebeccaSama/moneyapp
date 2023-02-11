import 'package:flutter/material.dart';
import 'package:moneyapp/views/authentificate/view/login.dart';
//import 'package:moneyapp/widgets/splashscreen.dart';

void main() {
  runApp(const MyMoneyApp());
}

class MyMoneyApp extends StatelessWidget {
  const MyMoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mboa Money',
      
      home: LogInView() //SplashScreen(),
    );
  }
}
