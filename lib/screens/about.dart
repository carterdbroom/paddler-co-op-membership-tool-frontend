import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/navigation_column.dart';
import 'package:membership_tool/widgets/page_headline.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    const programDescription =
        "This database will be used to keep track of all Paddler "
        "Co-op members, past and present. It will also include "
        "data on all courses previously held at the Co-op. It "
        "includes complete data starting at *Insert Date Here*.\n\n"
        "The goal of this database is to not only help the Co-op keep "
        "track of member data, but also help the Co-op leadership "
        "understand membership trends, course trends, and keep track of "
        "non-returning members so that they can be contacted in the future.\n\n"
        "If this is your first time using the database, please read "
        "the \"How To\" section. It will explain how to "
        "upload data to the database, how to search for a "
        "member or course, and how to use the analytics section. "
        "The database should be self sufficient, but if problems "
        "arise see the contact information below.";
    const String pageTitle = "About";
    const String aboutDatabaseHeader = "About the Database";
    const String aboutCreatorHeader = "About the Creator";
    const String contactParagraph =
        "Carter Broom is a former Paddler Co-op Instructor "
        "who has a passion for kayaking and outdoor education. "
        "At the time of creating this program, he is going into "
        "his third year of Computer Science at McMaster University. "
        "To contact him with any questions, please use the email below.";
    const String emailAddress = "carterdbroom@gmail.com";

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationColumn(),

          // Main Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PageHeadline(headline: pageTitle),
                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 4.0,
                  height: 4.0,
                  indent: 5.0,
                  endIndent: 5.0,
                  radius: BorderRadius.all(Radius.circular(2.0)),
                ),

                // Body
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      // Text Section
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              aboutDatabaseHeader,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              programDescription,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Divider(
                            color: Theme.of(context).colorScheme.primary,
                            thickness: 2.0,
                            height: 2.0,
                            indent: 5.0,
                            endIndent: 5.0,
                            radius: BorderRadius.all(Radius.circular(2.0)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              aboutCreatorHeader,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              contactParagraph,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SelectableText(
                              "Email: $emailAddress",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Image Section
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(26.0),
                            child: Image.asset(
                              "assets/images/IMG_8550.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
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
