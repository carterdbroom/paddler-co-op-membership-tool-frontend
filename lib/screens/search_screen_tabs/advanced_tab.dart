import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/drop_down_menu_elements.dart';

class AdvancedSearchTab extends StatefulWidget {
  const AdvancedSearchTab({super.key});

  @override
  State<AdvancedSearchTab> createState() => _AdvancedSearchTabState();
}

class _AdvancedSearchTabState extends State<AdvancedSearchTab> {
  String _dropDownSearchTypeValue = "-";
  String _searchValue = "";

  @override
  Widget build(BuildContext context) {
    void searchTypeChanged(String? value) {
      if (value is String) {
        setState(() {
          _dropDownSearchTypeValue = value;
        });
      }
    }

    void updateSearchValue(String value) {
      setState(() {
        _searchValue = value;
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(
            "What are you searching for?",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),

        // Search Type Dropdown
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
              items: DropDownMenuItems.getSearchAdvancedItems(context),
              value: _dropDownSearchTypeValue,
              onChanged: searchTypeChanged,
              isExpanded: true,
              elevation: 10,
              borderRadius: BorderRadius.circular(8.0),
              padding: const EdgeInsets.all(8.0),
              iconEnabledColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(
            "After selecting your search type, search for specific criteria below",
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
            child: Row(
              children: [
                Expanded(
                  child: SearchBar(
                    hintText: "Search",
                    onChanged: (value) {
                      updateSearchValue(value);
                    },
                    leading: const Icon(Icons.search),
                    shape: WidgetStatePropertyAll<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
