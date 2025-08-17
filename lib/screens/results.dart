import 'package:flutter/material.dart';
import 'package:membership_tool/widgets/export_button.dart';
import 'package:membership_tool/widgets/navigation_column.dart';
import 'package:membership_tool/widgets/page_headline.dart';
import 'package:membership_tool/widgets/table_example.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
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
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                PageHeadline(headline: "Results"),
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
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width - 150,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: DataTable(
                              columns: TableExample.getColumns(),
                              rows: TableExample.getRows(),
                              headingTextStyle: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(fontStyle: FontStyle.italic),
                              headingRowColor: WidgetStatePropertyAll<Color>(
                                Theme.of(context).colorScheme.secondary,
                              ),
                              dataRowColor: WidgetStatePropertyAll<Color>(
                                Theme.of(context).colorScheme.secondary,
                              ),
                              border: TableBorder.all(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(8.0),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: ExportButton(buttonName: "Export As CSV")),
                    Expanded(
                      child: ExportButton(
                        buttonName: "Export As Excel Spreadsheet",
                      ),
                    ),
                    Expanded(child: ExportButton(buttonName: "Export As JSON")),
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
