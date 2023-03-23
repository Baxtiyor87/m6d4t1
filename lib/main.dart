import 'package:flutter/material.dart';
import 'package:m6d4t1/pages/home_page.dart';
import 'package:m6d4t1/pages/signin_page.dart';
import 'package:m6d4t1/pages/signup_page.dart';
import 'package:m6d4t1/pages/splash_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id:(context) => const HomePage(),
        SignInPage.id:(context) => const SignInPage(),
        SignUpPage.id:(context) => const SignUpPage(),


      },
    );
  }
}