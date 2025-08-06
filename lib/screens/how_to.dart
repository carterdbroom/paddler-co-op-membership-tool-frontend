import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/navigation_column.dart';

class HowToPage extends StatelessWidget {
  const HowToPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [NavigationColumn()],
      ),
    );
  }
}
