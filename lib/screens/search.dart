import 'package:flutter/material.dart';
import 'package:membership_tool/screens/search_screen_tabs/advanced_tab.dart';
import 'package:membership_tool/screens/search_screen_tabs/membership_status_tab.dart';
import 'package:membership_tool/screens/search_screen_tabs/time_based_tab.dart';
import 'package:membership_tool/widgets/navigation_column.dart';
import 'package:membership_tool/widgets/page_headline.dart';
import 'package:membership_tool/widgets/search_button.dart';
import 'package:membership_tool/widgets/update_database_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isSearchValid = false;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  void _updateSearchValidity(bool isValid) {
    setState(() {
      _isSearchValid = isValid;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                  child: TabBar(
                    tabs: [
                      Tab(text: "Time Based Search"),
                      Tab(text: "Membership Status Search"),
                      Tab(text: "Advanced Search"),
                    ],
                    controller: _tabController,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      TimeBasedSearchTab(
                        onValidityChanged: _updateSearchValidity,
                      ),
                      MembershipStatusSearchTab(),
                      AdvancedSearchTab(),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(child: SearchButton(enabled: _isSearchValid)),
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
        ],
      ),
    );
  }
}
