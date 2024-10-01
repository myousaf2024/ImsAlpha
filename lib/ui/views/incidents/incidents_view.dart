import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/incidents/widget/report_incident.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:stacked/stacked.dart';

import 'incidents_viewmodel.dart';

class IncidentsView extends StackedView<IncidentsViewModel> {
  final String title;
  const IncidentsView(this.title, {Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    IncidentsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: MyAppBar(
        title: title,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMedium,
              Align(
                alignment: Alignment.topRight,
                child: MyButton(
                  title: "Create New",
                  height: 40,
                  color: kcdarkgreenColor,
                  width: screenWidth(context) / 2.2,
                  isplus: true,
                  fontSize: 16,
                  onTap: () {
                    viewModel.navigateToHealthandSafety(title);
                  },
                ),
              ),
              verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyButton(
                    title: "Existing Report",
                    height: 40,
                    fontSize: 16,
                    width: screenWidth(context) / 2.2,
                    onTap: () {
                      viewModel.changeTab(0);
                    },
                    selected: viewModel.selectedTab == 0,
                  ),
                  MyButton(
                    title: "Drafts",
                    height: 40,
                    fontSize: 16,
                    width: screenWidth(context) / 2.2,
                    selected: viewModel.selectedTab == 1,
                    onTap: () {
                      viewModel.changeTab(1);
                    },
                  ),
                ],
              ),
              verticalSpaceSmall,
              Column(
                children: [
                  ReportIncident(
                      report: "2334354555",
                      createdBy: "Yousaf Bhatti",
                      dateCreatedBy: "06/07/2024 | 00:07",
                      updatedBy: "Yousaf Bhatti",
                      dateUpdatedBy: "06/07/2024| 00:07",
                      description:
                          "bjjhjhkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkkjkjkjkjkjkjkjkjk",
                      status: viewModel.selectedTab == 0 ? "Rejected" : "Draft",
                      statusColor:
                          viewModel.selectedTab == 0 ? kcRedColor : kcdraft),
                  verticalSpaceSmall,
                  ReportIncident(
                      report: "2334354555",
                      createdBy: "Yousaf Bhatti",
                      dateCreatedBy: "06/07/2024 | 00:07",
                      updatedBy: "Yousaf Bhatti",
                      dateUpdatedBy: "06/07/2024| 00:07",
                      description:
                          "bjjhjhkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkkjkjkjkjkjkjkjkjk",
                      status: viewModel.selectedTab == 0 ? "Approved" : "Draft",
                      statusColor:
                          viewModel.selectedTab == 0 ? kcapprove : kcdraft),
                  verticalSpaceSmall,
                  ReportIncident(
                      report: "2334354555",
                      createdBy: "Yousaf Bhatti",
                      dateCreatedBy: "06/07/2024 | 00:07",
                      updatedBy: "Yousaf Bhatti",
                      dateUpdatedBy: "06/07/2024| 00:07",
                      description:
                          "bjjhjhkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkkjkjkjkjkjkjkjkjk",
                      status: viewModel.selectedTab == 0 ? "Approved" : "Draft",
                      statusColor:
                          viewModel.selectedTab == 0 ? kcapprove : kcdraft),
                  verticalSpaceSmall,
                  ReportIncident(
                      report: "2334354555",
                      createdBy: "Yousaf Bhatti",
                      dateCreatedBy: "06/07/2024 | 00:07",
                      updatedBy: "Yousaf Bhatti",
                      dateUpdatedBy: "06/07/2024| 00:07",
                      description:
                          "bjjhjhkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkkjkjkjkjkjkjkjkjk",
                      status: viewModel.selectedTab == 0 ? "Approved" : "Draft",
                      statusColor:
                          viewModel.selectedTab == 0 ? kcapprove : kcdraft),
                  verticalSpaceSmall,
                  ReportIncident(
                      report: "2334354555",
                      createdBy: "Yousaf Bhatti",
                      dateCreatedBy: "06/07/2024 | 00:07",
                      updatedBy: "Yousaf Bhatti",
                      dateUpdatedBy: "06/07/2024| 00:07",
                      description:
                          "bjjhjhkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkjkkjkjkjkjkjkjkjkjk",
                      status: viewModel.selectedTab == 0 ? "Approved" : "Draft",
                      statusColor:
                          viewModel.selectedTab == 0 ? kcapprove : kcdraft),
                ],
              )

              // DataTable(
              //   dataRowColor:
              //       WidgetStateColor.resolveWith((states) => kcVeryLightGrey),
              //   headingRowColor:
              //       WidgetStateColor.resolveWith((states) => kcDarkBlueColor),
              //   columnSpacing: (screenWidth(context) / 4 - 80),
              //   columns: const [
              //     DataColumn(label: Text('Sr No')),
              //     DataColumn(label: Text('Report No')),
              //     DataColumn(label: Text('Status')),
              //     DataColumn(label: Text('Action')),
              //   ],
              //   rows: (viewModel.selectedTab == 0
              //           ? viewModel.existingData
              //           : viewModel.draftsData)
              //       .map((item) {
              //     return DataRow(
              //       cells: [
              //         DataCell(Text(item['Sr No']!)),
              //         DataCell(Text(item['Report No']!)),
              //         DataCell(Text(item['Status']!,
              //             style: TextStyle(
              //                 color: item['Status'] == 'Approved'
              //                     ? Colors.green
              //                     : Colors.red))),
              //         const DataCell(Icon(Icons.open_in_new)),
              //       ],
              //     );
              //   }).toList(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  IncidentsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      IncidentsViewModel();
}
