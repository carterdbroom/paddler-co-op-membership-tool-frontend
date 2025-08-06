import 'package:flutter/material.dart';
import 'package:membership_tool/themes/theme_data.dart';

class HomePageTextSection extends StatelessWidget {
  final String title;
  final String body;

  const HomePageTextSection({Key? key, required this.title, required this.body})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(body, style: Theme.of(context).textTheme.bodySmall),
        ),
        SizedBox(height: 16.0),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          thickness: 2.0,
          height: 2.0,
          indent: 5.0,
          endIndent: 5.0,
          radius: BorderRadius.all(Radius.circular(2.0)),
        ),
      ],
    );
  }
}
