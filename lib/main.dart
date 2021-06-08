import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
      ),
      // darkTheme: ThemeData.dark().copyWith(
      //   primaryColor: Colors.indigo,
      //   scaffoldBackgroundColor: Colors.white12,
      // ),
      home: DashboardPage(),
    );
  }
}
