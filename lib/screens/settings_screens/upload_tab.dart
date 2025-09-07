import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:membership_tool/widgets/upload_data_button.dart';

class UploadTab extends StatefulWidget {
  const UploadTab({super.key});

  @override
  State<UploadTab> createState() => _UploadTabState();
}

class _UploadTabState extends State<UploadTab> {
  String _searchValue = "";
  void updateSearchValue(String value) {
    setState(() {
      _searchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                  onChanged: (value) {
                    updateSearchValue(value);
                  },
                  hintText: "Set upload directory file path",
                  leading: SvgPicture.asset(
                    'assets/icons/folder.svg',
                    width: 32,
                    height: 32,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  shape: WidgetStatePropertyAll<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        UploadDataButton(buttonName: "UPLOAD DATA", filePath: _searchValue),
      ],
    );
  }
}
