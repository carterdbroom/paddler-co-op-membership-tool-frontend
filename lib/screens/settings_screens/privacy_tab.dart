import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:membership_tool/widgets/add_email_button.dart';

class PrivacyTab extends StatefulWidget {
  const PrivacyTab({super.key});

  @override
  State<PrivacyTab> createState() => _PrivacyTabState();
}

class _PrivacyTabState extends State<PrivacyTab> {
  final List<String> emails = [];
  String _searchValue = '';
  void updateSearchValue(String value) {
    setState(() {
      _searchValue = value;
    });
  }

  void addEmail() {
    if (_searchValue.isNotEmpty && !emails.contains(_searchValue)) {
      setState(() {
        emails.add(_searchValue);
        _searchValue = '';
      });
    }
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
                  hintText:
                      "Type the email you would like to add permissions for",
                  leading: SvgPicture.asset(
                    'assets/icons/mail.svg',
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
        AddEmailButton(buttonName: "Add Email", onAdd: addEmail),
        Expanded(
          child: ListView.builder(
            itemCount: emails.length,
            itemBuilder: (context, index) => ListTile(
              leading: SvgPicture.asset(
                'assets/icons/mail.svg',
                width: 32,
                height: 32,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(emails[index]),
            ),
          ),
        ),
      ],
    );
  }
}
