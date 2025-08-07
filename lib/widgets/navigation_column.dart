import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/navigation_column_card.dart';

class NavigationColumn extends StatelessWidget {
  const NavigationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 4.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavigationColumnCard(buttonName: "Home", routeName: "/home"),
            NavigationColumnCard(buttonName: "About", routeName: "/about"),
            NavigationColumnCard(buttonName: "How To", routeName: "/how_to"),
            NavigationColumnCard(buttonName: "Search", routeName: "/search"),
            NavigationColumnCard(
              buttonName: "Analytics",
              routeName: "/analytics",
            ),
          ],
        ),
      ),
    );
  }
}
