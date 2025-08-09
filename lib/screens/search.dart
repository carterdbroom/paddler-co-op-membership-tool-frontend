import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/navigation_column.dart';
import 'package:membership_tool/widgets/page_headline.dart';
import 'package:membership_tool/widgets/update_database_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _dropdownValue = "-";
  @override
  Widget build(BuildContext context) {
    void dropdownChanged(String? value) {
      if (value is String) {
        setState(() {
          _dropdownValue = value;
        });
      }
    }

    const String firstMenuPrompt = "What are you searching for?";
    const String secondMenuPrompt =
        "How many years back would you like to search?";
    final List<DropdownMenuItem<String>> items = [
      DropdownMenuItem(
        value: "-",
        child: Text("-", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Members",
        child: Text("Members", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Courses",
        child: Text("Courses", style: Theme.of(context).textTheme.bodyMedium),
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationColumn(),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PageHeadline(headline: "Search"),
                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 4.0,
                  height: 4.0,
                  indent: 5.0,
                  endIndent: 5.0,
                  radius: BorderRadius.all(Radius.circular(2.0)),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                        child: Text(
                          firstMenuPrompt,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton(
                            items: items,
                            value: _dropdownValue,
                            onChanged: dropdownChanged,
                            isExpanded: true,
                            elevation: 10,
                            borderRadius: BorderRadius.circular(8.0),
                            padding: const EdgeInsets.all(8.0),
                            iconEnabledColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                        child: Text(
                          secondMenuPrompt,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButton(
                            items: items,
                            value: _dropdownValue,
                            onChanged: dropdownChanged,
                            isExpanded: true,
                            elevation: 10,
                            borderRadius: BorderRadius.circular(8.0),
                            padding: const EdgeInsets.all(8.0),
                            iconEnabledColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    UpdateDatabaseButton(buttonName: "Update Database"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
