import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/drop_down_menu_elements.dart';

class TimeBasedSearchTab extends StatefulWidget {
  const TimeBasedSearchTab({super.key});

  @override
  State<TimeBasedSearchTab> createState() => _TimeBasedSearchTabState();
}

class _TimeBasedSearchTabState extends State<TimeBasedSearchTab> {
  String _dropdownSearchTypeValue = "-";
  String _dropdownStartDateValue = "-";
  String _dropdownEndDateValue = "-";

  @override
  Widget build(BuildContext context) {
    void searchTypeChanged(String? value) {
      if (value is String) {
        setState(() {
          _dropdownSearchTypeValue = value;
        });
      }
    }

    void startDateChanged(String? value) {
      if (value is String) {
        setState(() {
          _dropdownStartDateValue = value;
        });
      }
    }

    void endDateChanged(String? value) {
      if (value is String) {
        setState(() {
          _dropdownEndDateValue = value;
        });
      }
    }

    const String searchTypeMenuPrompt = "What are you searching for?";
    const String startDateMenuPrompt =
        "How far back would you like to start your search at?";
    const String endDateMenuPrompt =
        "How far back would you like to end your search at?";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First drop down menu
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(
            searchTypeMenuPrompt,
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
              items: DropDownMenuItems.getSearchTypeItems(context),
              value: _dropdownSearchTypeValue,
              onChanged: searchTypeChanged,
              isExpanded: true,
              elevation: 10,
              borderRadius: BorderRadius.circular(8.0),
              padding: const EdgeInsets.all(8.0),
              iconEnabledColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        // Second dropdown menu
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(
            startDateMenuPrompt,
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
              items: DropDownMenuItems.getSearchStartDateItems(context),
              value: _dropdownStartDateValue,
              onChanged: startDateChanged,
              isExpanded: true,
              elevation: 10,
              borderRadius: BorderRadius.circular(8.0),
              padding: const EdgeInsets.all(8.0),
              iconEnabledColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        // Third dropdown menu
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(
            endDateMenuPrompt,
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
              items: DropDownMenuItems.getSearchEndDateItems(context),
              value: _dropdownEndDateValue,
              onChanged: endDateChanged,
              isExpanded: true,
              elevation: 10,
              borderRadius: BorderRadius.circular(8.0),
              padding: const EdgeInsets.all(8.0),
              iconEnabledColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
