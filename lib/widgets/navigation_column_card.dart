import 'package:flutter/material.dart';

class NavigationColumnCard extends StatefulWidget {
  const NavigationColumnCard({
    super.key,
    required this.buttonName,
    required this.routeName,
  });

  final String buttonName;
  final String routeName;

  @override
  State<NavigationColumnCard> createState() => _NavigationColumnCardState();
}

class _NavigationColumnCardState extends State<NavigationColumnCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovering = true),
        onExit: (_) => setState(() => _hovering = false),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed(widget.routeName);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            constraints: const BoxConstraints(maxWidth: 90, maxHeight: 40),
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
            child: Center(
              child: FittedBox(
                fit: BoxFit.scaleDown, // Scales down to fit, but won't scale up
                child: Text(
                  widget.buttonName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
