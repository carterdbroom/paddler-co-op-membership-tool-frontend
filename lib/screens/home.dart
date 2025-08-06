import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/home_page_text_section.dart';
import 'package:membership_tool/widgets/navigation_column.dart';
import 'package:membership_tool/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const title = "Paddler Co-op Membership Database";
    const aboutTitle = "About";
    const howToTitle = "How To Use";
    const contactTitle = "Contact";
    const programDescription =
        "This database will be used to keep track of all Paddler "
        "Co-op members, past and present. It will also include "
        "data on all courses previously held at the Co-op. It "
        "includes complete data starting at *Insert Date Here*. "
        "If this is your first time using the database, please read "
        "the \"How To\" section on this page. It will explain to you "
        "how to upload data to the database, how to search for a "
        "member or course, and how to use the analytics section. "
        "The database should be self sufficient, but if problems "
        "arise see the \"Contact\" section on this page.";

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
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsGeometry.fromLTRB(
                          7.0,
                          6.0,
                          6.0,
                          1.0,
                        ),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(6.0, 6.0, 7.0, 6.0),
                      child: Container(
                        width: 138.33,
                        height: 41.66,
                        child: Image.asset(
                          "assets/images/paddlerCo-opLogoWhite.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),

                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 4.0,
                  height: 4.0,
                  indent: 5.0,
                  endIndent: 5.0,
                  radius: BorderRadius.all(Radius.circular(2.0)),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    children: [
                      HomePageTextSection(
                        title: aboutTitle,
                        body: programDescription,
                      ),
                      HomePageTextSection(
                        title: aboutTitle,
                        body: programDescription,
                      ),
                      HomePageTextSection(
                        title: aboutTitle,
                        body: programDescription,
                      ),
                      HomePageTextSection(
                        title: aboutTitle,
                        body: programDescription,
                      ),
                    ],
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
