import 'package:flutter/material.dart';
import 'package:membership_tool/screens/settings_screens/privacy_tab.dart';
import 'package:membership_tool/screens/settings_screens/upload_tab.dart';
import 'package:membership_tool/widgets/page_headline.dart';

class SettingsPage extends StatefulWidget {
  final int initialTab;
  const SettingsPage({super.key, this.initialTab = 0});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.initialTab,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 4.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [BackButton()],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                PageHeadline(headline: "Settings"),
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
                      Tab(text: "Password and Privacy"),
                      Tab(text: "Upload"),
                    ],
                    controller: _tabController,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [PrivacyTab(), UploadTab()],
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
