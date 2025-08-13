import 'package:flutter/material.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({super.key});

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
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
            Placeholder();
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            constraints: const BoxConstraints(maxWidth: 200, maxHeight: 80),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 2.0,
              ),
              boxShadow: _hovering
                  ? [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.primary,
                        blurRadius: 20,
                        spreadRadius: 8,
                      ),
                    ]
                  : [],
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.scaleDown, // Scales down to fit, but won't scale up
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    "Search",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ), // Change just the color
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
