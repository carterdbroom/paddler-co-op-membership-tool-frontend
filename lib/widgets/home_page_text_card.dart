import 'package:flutter/material.dart';

class HomePageTextCard extends StatefulWidget {
  final String title;
  final String body;
  final String routeName;

  const HomePageTextCard({
    Key? key,
    required this.title,
    required this.body,
    required this.routeName,
  }) : super(key: key);

  @override
  State<HomePageTextCard> createState() => _HomePageTextSectionState();
}

class _HomePageTextSectionState extends State<HomePageTextCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovering = true),
        onExit: (_) => setState(() => _hovering = false),
        child: InkWell(
          onTap: () => {
            Navigator.of(context).pushReplacementNamed(widget.routeName),
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            constraints: BoxConstraints(maxWidth: 300, maxHeight: 300),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2.0,
              ),
              boxShadow: _hovering
                  ? [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.primary,
                        blurRadius: 8,
                      ),
                    ]
                  : [],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 2.0,
                  height: 2.0,
                  indent: 5.0,
                  endIndent: 5.0,
                  radius: BorderRadius.all(Radius.circular(2.0)),
                  // Removed radius, not supported by Divider
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                  child: Text(
                    widget.body,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
