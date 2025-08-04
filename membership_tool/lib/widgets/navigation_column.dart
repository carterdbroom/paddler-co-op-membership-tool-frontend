import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/navigation_column_card.dart';

class NavigationColumn extends StatelessWidget {
  const NavigationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.tertiary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => {Placeholder()},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.primary,
              ),
            ),
            child: Text("Home", style: Theme.of(context).textTheme.bodySmall),
          ),
          TextButton(onPressed: () => {Placeholder()}, child: Text("Search")),
          TextButton(
            onPressed: () => {Placeholder()},
            child: Text("Analytics"),
          ),
        ],
      ),
    );
  }
}
