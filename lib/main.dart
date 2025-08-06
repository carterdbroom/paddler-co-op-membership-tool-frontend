import 'package:flutter/material.dart';
import 'package:membership_tool/screens/home.dart';
import 'package:membership_tool/themes/theme_data.dart';
import 'package:membership_tool/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paddler Co-op Membership Database',
      home: const HomePage(),
      theme: defaultTheme,
      routes: routes,
      initialRoute: '/home',
    );
  }
}
