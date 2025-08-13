import 'package:flutter/material.dart';
import 'package:membership_tool/screens/about.dart';
import 'package:membership_tool/screens/home.dart';
import 'package:membership_tool/screens/how_to.dart';
import 'package:membership_tool/screens/search.dart';
import 'package:membership_tool/screens/analytics.dart';
import 'package:membership_tool/screens/results.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (context) => HomePage(),
  '/how_to': (context) => HowToPage(),
  '/search': (context) => SearchPage(),
  '/analytics': (context) => AnalyticsPage(),
  '/about': (context) => const AboutPage(),
  '/results': (context) => const ResultsPage(),
};
