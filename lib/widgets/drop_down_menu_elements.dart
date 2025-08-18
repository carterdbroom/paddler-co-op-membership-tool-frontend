import 'package:flutter/material.dart';

class DropDownMenuItems {
  // Time Based Search Tab Menu 1
  static List<DropdownMenuItem<String>> getSearchTypeItems(
    BuildContext context,
  ) {
    return [
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
  }

  // Time Based Search Menu 2
  static List<DropdownMenuItem<String>> getSearchStartDateItems(
    BuildContext context,
  ) {
    return [
      DropdownMenuItem(
        value: "-",
        child: Text("-", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "1 Year",
        child: Text("1 Year", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "2 Years",
        child: Text("2 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "3 Years",
        child: Text("3 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "4 Years",
        child: Text("4 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "5 Years",
        child: Text("5 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "6 Years",
        child: Text("6 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "7 Years",
        child: Text("7 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "8 Years",
        child: Text("8 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "9 Years",
        child: Text("9 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "10 Years",
        child: Text("10 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "15 Years",
        child: Text("15 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "20 Years",
        child: Text("20 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "30 Years",
        child: Text("30 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "40 Years",
        child: Text("40 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "50 Years",
        child: Text("50 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Start of Records",
        child: Text(
          "Start of Records",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    ];
  }

  // Time Based Search Tab Menu 3
  static List<DropdownMenuItem<String>> getSearchEndDateItems(
    BuildContext context,
  ) {
    return [
      DropdownMenuItem(
        value: "-",
        child: Text("-", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Present Date",
        child: Text(
          "Present Date",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      DropdownMenuItem(
        value: "1 Year",
        child: Text("1 Year", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "2 Years",
        child: Text("2 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "3 Years",
        child: Text("3 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "4 Years",
        child: Text("4 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "5 Years",
        child: Text("5 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "6 Years",
        child: Text("6 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "7 Years",
        child: Text("7 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "8 Years",
        child: Text("8 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "9 Years",
        child: Text("9 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "10 Years",
        child: Text("10 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "15 Years",
        child: Text("15 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "20 Years",
        child: Text("20 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "30 Years",
        child: Text("30 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "40 Years",
        child: Text("40 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "50 Years",
        child: Text("50 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
    ];
  }

  // Membership Status Tab Menu 1
  static List<DropdownMenuItem<String>> getSearchMembershipStatusItems(
    BuildContext context,
  ) {
    return [
      DropdownMenuItem(
        value: "-",
        child: Text("-", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Current Member (Good Standing)",
        child: Text(
          "Current Member (Good Standing)",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),

      DropdownMenuItem(
        value: "Not a Current Member (Bad Standing)",
        child: Text(
          "Not a Current Member (Bad Standing)",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    ];
  }

  // Membership Status Tab Menu 2 and 3
  static List<DropdownMenuItem<String>> getSearchMembershipPurchaseDateItems(
    BuildContext context,
  ) {
    return [
      DropdownMenuItem(
        value: "-",
        child: Text("-", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Present Date",
        child: Text(
          "Present Date",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      DropdownMenuItem(
        value: "1 Year",
        child: Text("1 Year", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "2 Years",
        child: Text("2 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "3 Years",
        child: Text("3 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "4 Years",
        child: Text("4 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "5 Years",
        child: Text("5 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "6 Years",
        child: Text("6 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "7 Years",
        child: Text("7 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "8 Years",
        child: Text("8 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "9 Years",
        child: Text("9 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "10 Years",
        child: Text("10 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "15 Years",
        child: Text("15 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "20 Years",
        child: Text("20 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "30 Years",
        child: Text("30 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "40 Years",
        child: Text("40 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "50 Years",
        child: Text("50 Years", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Start of Records",
        child: Text(
          "Start of Records",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    ];
  }

  // Advanced Search Tab Menu 1
  static List<DropdownMenuItem<String>> getSearchAdvancedItems(
    BuildContext context,
  ) {
    return [
      DropdownMenuItem(
        value: "-",
        child: Text("-", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Member ID",
        child: Text("Member ID", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Member First Name",
        child: Text(
          "Member First Name",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      DropdownMenuItem(
        value: "Member Last Name",
        child: Text(
          "Member Last Name",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      DropdownMenuItem(
        value: "First Membership Purchase Date",
        child: Text(
          "First Membership Purchase Date",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      DropdownMenuItem(
        value: "Course ID",
        child: Text("Course ID", style: Theme.of(context).textTheme.bodyMedium),
      ),
      DropdownMenuItem(
        value: "Course Name",
        child: Text(
          "Course Name",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      DropdownMenuItem(
        value: "Course Start Date",
        child: Text(
          "Course Start Date",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    ];
  }
}
