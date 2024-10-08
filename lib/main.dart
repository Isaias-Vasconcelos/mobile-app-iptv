import 'package:flutter/material.dart';
import 'package:iptv_mobile/screens/introduction_screen_widget.dart';
import 'package:iptv_mobile/screens/login_widgets/login_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlphaTV',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const IntroductionScreenWidget(),
        "/login": (context) => const LoginScreenWidget()
      },
    );
  }
}
