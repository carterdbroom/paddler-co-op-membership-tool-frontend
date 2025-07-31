import 'package:flutter/material.dart';

class NavigationColumnCard extends StatefulWidget {
  const NavigationColumnCard({super.key, required this.name});

  final String name;

  @override
  State<NavigationColumnCard> createState() => _NavigationColumnCardState();
}

class _NavigationColumnCardState extends State<NavigationColumnCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.0),
      child: Placeholder()
    );
  }
}