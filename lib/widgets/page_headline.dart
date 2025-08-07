import 'package:flutter/material.dart';

class PageHeadline extends StatelessWidget {
  final String headline;
  const PageHeadline({Key? key, required this.headline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsetsGeometry.fromLTRB(7.0, 6.0, 6.0, 1.0),
            child: Text(
              headline,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(letterSpacing: 0.5),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(6.0, 6.0, 7.0, 6.0),
          child: Container(
            width: 138.33,
            height: 41.66,
            child: Image.asset(
              "assets/images/paddlerCo-opLogoWhite.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
