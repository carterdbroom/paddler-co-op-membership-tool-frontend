import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/drop_down_menu_elements.dart';

class MembershipStatusSearchTab extends StatefulWidget {
  const MembershipStatusSearchTab({super.key});

  @override
  State<MembershipStatusSearchTab> createState() =>
      _MembershipStatusSearchTabState();
}

class _MembershipStatusSearchTabState extends State<MembershipStatusSearchTab> {
  String _dropDownMemberStatusValue = "-";
  String _dropDownFirstMembershipPurchaseDateValue = "-";

  @override
  Widget build(BuildContext context) {
    void membershipStatusChanged(String? value) {
      if (value is String) {
        setState(() {
          _dropDownMemberStatusValue = value;
        });
      }
    }

    void firstMembershipPurchaseDateChanged(String? value) {
      if (value is String) {
        setState(() {
          _dropDownFirstMembershipPurchaseDateValue = value;
        });
      }
    }

    const String membershipStatusPrompt =
        "Select the membership status you are searching for";
    const String firstMembershipPurchaseDatePrompt =
        "Select how far back you want to search for first membership purchases";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First drop down menu
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(
            membershipStatusPrompt,
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
              items: DropDownMenuItems.getSearchMembershipStatusItems(context),
              value: _dropDownMemberStatusValue,
              onChanged: membershipStatusChanged,
              isExpanded: true,
              elevation: 10,
              borderRadius: BorderRadius.circular(8.0),
              padding: const EdgeInsets.all(8.0),
              iconEnabledColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        // Second drop down menu
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: Text(
            firstMembershipPurchaseDatePrompt,
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
              value: _dropDownFirstMembershipPurchaseDateValue,
              onChanged: firstMembershipPurchaseDateChanged,
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
