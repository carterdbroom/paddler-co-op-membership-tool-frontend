import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/navigation_column.dart';
import 'package:membership_tool/widgets/page_headline.dart';
import 'package:membership_tool/widgets/update_database_button.dart';

class HowToPage extends StatelessWidget {
  const HowToPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String addingToTheDatabasePart1 =
        "Adding data to the database is simple. To do so "
        "look for the 'Update Database' button (pictured below).";

    const String addingToTheDatabasePart2 =
        "When you click on the button you will be prompted to choose the path "
        "to the folder that will hold the CSV files that you want uploaded "
        "to the database. "
        "Once you have specified the path, make sure you have the CSV files "
        "in said location. Click \"Update Database\" to begin the upload. "
        "You should get a prompt that tells you whether the upload was successful. "
        "Another way to check that the upload was successful is to go to the folder "
        "where you put the CSV files. These CSV files should have been moved to subfolder "
        "within your chosen directory called \"uploaded_files\".";

    const String searchingTheDatabase =
        "There are three ways to search for data, the Time Based Search, "
        "Membership Status Search, and Advanced Search. We will go over each "
        "of these in detail below. \n\n"
        "The Time Based Search is simplest of the three. Pick what you want to "
        "search for (either Members or Courses), and then specify the start and end "
        "of the time range you want to search within. Click the search button after "
        "you have made your selection. All results will show up in the results page. "
        "Please note that you can't have the start date after the end date. The program "
        "will tell you that your selection is invalid. \n\n"
        "The Membership Status Search allows you to search for members based on their "
        "membership status. (Members that have current memberships are in \"Good Standing\" "
        "while those that are not current members are in \"Bad Standing\".) "
        "You can search for when said members first bought their membership "
        "or also search for when said members bought their last membership.\n\n"
        "The Advanced Search allows you to search for specific criteria. "
        "You can choose an attribute that you would like to search for, and then "
        "use the search bar to input your query. When using the search bar make sure "
        "that spelling is correct. You will not get the desired output if you enter "
        "the incorrect spelling. \n\n"
        "For each of the search types, you must click the search button after making "
        "your selections in the dropdown menus. Go to the Results page to view the "
        "result of your query.";

    const String gettingResults =
        "Once you have made your search, go to the Results page to view the output. "
        "You can choose to export the table as a CSV, Excel Spreadsheet, or JSON. "
        "When you make the export selection, you will be prompted to choose a location "
        "on your computer to store the exported file. Don't choose the folder "
        "that you chose for uploading the CSV files, store it somewhere else.";

    const String examples =
        "Below some example searches be shown. \n\n"
        "Sometimes you may choose not to enter information in the drop down menus and "
        "leave the \"-\" in the selection box. We will now go over some examples of how "
        "the \"-\" will be treated for searches. For the Time Based Search the \"- \""
        "will default to either the start of the records or to the present date "
        "(depending if you have selected the dash in the start or end date). For example, "
        "if you were to search for all the members from the start of the records to the "
        "present date, you don't even have to enter that information, you can just leave "
        "the date selection menus as \"-\". You can also use this mechanic in the "
        "Membership Status Search. For example, if you just want to get the data of all "
        "the current members, leave the first and last membership purchase menus as \"-\".";

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
                PageHeadline(headline: "How To Use"),
                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 4.0,
                  height: 4.0,
                  indent: 5.0,
                  endIndent: 5.0,
                  radius: BorderRadius.all(Radius.circular(2.0)),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 1. Adding to the database
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Adding Data to the Database",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            addingToTheDatabasePart1,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),

                        UpdateDatabaseButton(
                          buttonName: 'Update Database',
                          offsetLeft: 0,
                          offsetRight: 0,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            addingToTheDatabasePart2,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),

                        Divider(
                          thickness: 2.0,
                          height: 2.0,
                          color: Theme.of(context).colorScheme.primary,
                          indent: 5.0,
                          endIndent: 5.0,
                          radius: BorderRadius.all(Radius.circular(2.0)),
                        ),

                        // 2. Searching
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Searching the Database",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            searchingTheDatabase,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),

                        Divider(
                          thickness: 2.0,
                          height: 2.0,
                          color: Theme.of(context).colorScheme.primary,
                          indent: 5.0,
                          endIndent: 5.0,
                          radius: BorderRadius.all(Radius.circular(2.0)),
                        ),

                        // 3. Getting Results
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Getting Results",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            gettingResults,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),

                        Divider(
                          thickness: 2.0,
                          height: 2.0,
                          color: Theme.of(context).colorScheme.primary,
                          indent: 5.0,
                          endIndent: 5.0,
                          radius: BorderRadius.all(Radius.circular(2.0)),
                        ),

                        // 3. Examples
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Examples",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            examples,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
