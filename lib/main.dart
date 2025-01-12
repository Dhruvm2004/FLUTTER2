import 'package:flutter/material.dart';
import 'package:flutter2/pages/cart_page.dart';
import 'package:flutter2/pages/home_page.dart';
import 'package:flutter2/pages/login_page.dart';
import 'package:flutter2/utils/routes.dart';
import 'package:flutter2/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute:  MyRoutes.homeRoute,
      
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
