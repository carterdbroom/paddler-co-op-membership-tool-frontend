import 'package:flutter/material.dart';
import 'package:membership_tool/screens/contact.dart';
import 'package:membership_tool/screens/home.dart';
import 'package:membership_tool/screens/about.dart';
import 'package:membership_tool/screens/how_to.dart';
import 'package:membership_tool/screens/search.dart';
import 'package:membership_tool/screens/analytics.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => HomePage(),
  '/about': (context) => AboutPage(),
  '/how_to': (context) => HowToPage(),
  '/search': (context) => SearchPage(),
  '/analytics': (context) => AnalyticsPage(),
  '/contact': (context) => const ContactPage(), // Placeholder for contact page
};
