

import 'package:flutter/material.dart';
import 'package:flutter_new_project_1/pages/homepage.dart';
import 'package:flutter_new_project_1/pages/loginpage.dart';
import 'package:flutter_new_project_1/utils/routes.dart';
import 'package:flutter_new_project_1/utils/themes.dart';



void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
debugShowCheckedModeBanner: false,
initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) =>  HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.drawerRoute:(context) => const Drawer(),
      },
    );
  }
}
