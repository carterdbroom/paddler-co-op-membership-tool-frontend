import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/home_page_text_card.dart';
import 'package:membership_tool/widgets/navigation_column.dart';
import 'package:membership_tool/widgets/page_headline.dart';
import 'package:membership_tool/widgets/update_database_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    const String title = "Paddler Co-op Membership Database";
    const String aboutTitle = "About";
    const String howToTitle = "How To Use";
    const String searchTitle = "Search";
    const String resultsTitle = "Results";
    const String analyticsTitle = "Analytics";
    const String aboutDescription =
        "Want to learn more about this project? Check out the About section.";
    const String howToDescription =
        "Read this if you have not before! This will tell you "
        "how to properly use the database tool.";
    const String searchDescription =
        "Trying to get member and course information? This is where you search "
        "for it.";
    const String resultsDescription =
        "This section displays the results of your search.";
    const String analyticsDescription =
        "View various analytics related to member and course data.";

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
                PageHeadline(headline: title),

                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 4.0,
                  height: 4.0,
                  indent: 5.0,
                  endIndent: 5.0,
                  radius: BorderRadius.all(Radius.circular(2.0)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(2, 6, 2, 0),
                    child: Column(
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            //mainAxisSpacing: 2.0,
                            //crossAxisSpacing: 2.0,
                            childAspectRatio: 4 / 1,
                            //shrinkWrap: true,
                            children: [
                              HomePageTextCard(
                                title: aboutTitle,
                                body: aboutDescription,
                                routeName: "/about",
                              ),
                              HomePageTextCard(
                                title: howToTitle,
                                body: howToDescription,
                                routeName: "/how_to",
                              ),
                              HomePageTextCard(
                                title: searchTitle,
                                body: searchDescription,
                                routeName: "/search",
                              ),
                              HomePageTextCard(
                                title: resultsTitle,
                                body: resultsDescription,
                                routeName: "/results",
                              ),
                              HomePageTextCard(
                                title: analyticsTitle,
                                body: analyticsDescription,
                                routeName: "/analytics",
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            UpdateDatabaseButton(
                              buttonName: "Update Database",
                              offsetLeft: -5,
                              offsetRight: -5,
                            ),
                          ],
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
