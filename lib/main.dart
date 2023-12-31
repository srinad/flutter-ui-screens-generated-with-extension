import 'package:flutter/material.dart';
import 'package:testing_vscode_generator/screens/GroceryScreen/groecery_screen.dart';
import 'package:testing_vscode_generator/screens/LoginScreen/login_screen.dart';
import 'package:testing_vscode_generator/screens/NetFlixScreen/netflix_screen.dart';
import 'package:testing_vscode_generator/screens/OtpScreen/otp_screen.dart';
import 'package:testing_vscode_generator/screens/ProductScreen/product_screen.dart';
import 'package:testing_vscode_generator/screens/SignupScreen/signup_scree.dart';

import 'screens/HomeScreen/home_screen.dart';
import 'screens/LoginPageScreen/login_page.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignupScreen(),
    );
  }
}
