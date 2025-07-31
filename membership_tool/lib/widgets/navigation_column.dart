import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/navigation_column_card.dart';

class NavigationColumn extends StatelessWidget {
  const NavigationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => {
              Placeholder()
            }, 
            style: ButtonStyle(

            ),
            child: Text("Home")
          ),
          TextButton(
            onPressed: () => {
              Placeholder()
            }, 
            child: Text("Search")
          ),
          TextButton(
            onPressed: () => {
              Placeholder()
            }, 
            child: Text("Analytics")
          ),
        ],
      )
    );
  }
}