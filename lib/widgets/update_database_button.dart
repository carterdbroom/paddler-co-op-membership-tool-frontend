import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdateDatabaseButton extends StatefulWidget {
  const UpdateDatabaseButton({super.key, required this.buttonName});

  final String buttonName;

  @override
  State<UpdateDatabaseButton> createState() => _NavigationColumnCardState();
}

class _NavigationColumnCardState extends State<UpdateDatabaseButton> {
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
                        offset: Offset(-5, -5),
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
                  child: SvgPicture.asset(
                    'assets/icons/databaseUpload.svg', // Replace with your icon path
                    width: 48,
                    height: 48,
                    colorFilter: ColorFilter.mode(
                      Theme.of(
                        context,
                      ).colorScheme.secondary, // Your desired color
                      BlendMode.srcIn,
                    ),
                    // Change just the color
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
