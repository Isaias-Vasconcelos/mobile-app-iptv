import 'package:flutter/material.dart';
import 'package:iptv_mobile/screens/home/home_screen.dart';
import 'package:iptv_mobile/screens/intro/introduction_screen.dart';
import 'package:iptv_mobile/screens/list_content/list_movies_screen.dart';
import 'package:iptv_mobile/screens/login/login_screen.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlphaTV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      initialRoute: "/list-movies",
      routes: {
        "/": (context) => const IntroductionScreen(),
        "/login": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreen(),
        "/list-movies": (context) => const ListMoviesScreen()
      },
    );
  }
}
