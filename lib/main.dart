import 'package:flutter/material.dart';
import 'package:test_test/screen/auth_screen.dart';
import 'package:test_test/screen/intro_screen.dart';
import 'package:test_test/screen/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:test_test/services/cart.dart';
import 'package:test_test/widgets/specific_card.dart';
import 'package:test_test/utils/products.dart';
import './providers/products.dart';
import './providers/cart.dart';
void main() => runApp(MyApp());


  class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return

       MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.orange,
// This is the theme of your application.
//
// Try running your application with "flutter run". You'll see the
// application has a blue toolbar. Then, without quitting the app, try
// changing the primarySwatch below to Colors.green and then invoke
// "hot reload" (press "r" in the console where you ran "flutter run",
// or simply save your changes to "hot reload" in a Flutter IDE).
// Notice that the counter didn't reset back to zero; the application
// is not restarted.
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Color(0xFFD54F),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Colors.grey),
            ),),
        ),
        home: Introscreen(),
        routes: {
          'home': (context) => homescreen(),
          'Login': (context) => Authscreen(authType: AuthType.login),
          'Register': (context) => Authscreen(authType: AuthType.register),


        });

  }
  }

