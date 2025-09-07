import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

class UploadDataButton extends StatefulWidget {
  const UploadDataButton({
    super.key,
    required this.buttonName,
    required this.filePath,
  });

  final String buttonName;
  final String filePath;

  @override
  State<UploadDataButton> createState() => _UploadDataButtonState();
}

class _UploadDataButtonState extends State<UploadDataButton> {
  bool _hovering = false;

  bool _isValidPath(String filePath) {
    try {
      final directory = Directory(filePath);
      return directory.existsSync();
    } catch (e) {
      print('Path validation error: $e');
      return false;
    }
  }

  Future<void> runPythonScript(String filePath) async {
    if (!_isValidPath(filePath)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Invalid directory path: ${widget.filePath}'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
      return;
    }

    try {
      final scriptPath = path.join(
        Directory.current.path,
        'lib',
        'database_update.py',
      );
      final result = await Process.run('python', [scriptPath, filePath]);

      if (result.exitCode == 0) {
        print('Script output: ${result.stdout}');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Data uploaded successfully!'),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          );
        }
      } else {
        print('Script error: ${result.stderr}');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error uploading data: ${result.stderr}'),
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
          );
        }
      }
    } catch (e) {
      print('Error running script: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovering = true),
        onExit: (_) => setState(() => _hovering = false),
        child: InkWell(
          onTap: () {
            runPythonScript(widget.filePath);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            constraints: const BoxConstraints(maxHeight: 80),
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
                        blurRadius: 10,
                        //offset: Offset(-5, -5),
                        spreadRadius: 2,
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
                    widget.buttonName,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
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
