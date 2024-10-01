import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/dash_board/widgets/dashBoard_button.dart';
import 'package:lms_alpha/ui/views/dash_board/widgets/dashboard_widget.dart';
import 'package:stacked/stacked.dart';

import 'dash_board_viewmodel.dart';

class DashBoardView extends StackedView<DashBoardViewModel> {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DashBoardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      "Yousaf Bhatti",
                      style: TextStyle(
                          fontSize: getResponsiveMediumFontSize(context),
                          color: kcskylueColor,
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.location_on,
                      color: kcRedColor,
                    ),
                    horizontalSpaceSmall,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Site#0112",
                          style: TextStyle(
                              fontSize: getResponsiveSmallFontSize(context),
                              color: kcblackColor.withOpacity(0.65)),
                        ),
                        Text(
                          "Lahore, Pakistan",
                          style: TextStyle(
                              fontSize: getResponsiveSmallFontSize(context),
                              color: kcblackColor.withOpacity(0.65)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth(context) - 40,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: kcVeryLightGrey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login Details",
                      style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        color: kcblackColor.withOpacity(0.65),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceSmall,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DashboardWidget("Total Logins", "12",
                              totalLogins, kcTotalLogin1, kcTotalLogin2),
                        ),
                        horizontalSpaceTiny,
                        Expanded(
                          child: DashboardWidget("Last Logins", "12/12/2024",
                              lastLogins, kcLastLogin1, kcLastLogin2),
                        ),
                        horizontalSpaceTiny,
                        Expanded(
                            child: DashboardWidget(
                                "Logins", "12", login, kcLogin1, kcLogin2)),
                        horizontalSpaceTiny,
                        Expanded(
                          child: DashboardWidget("Total Records", "12",
                              totalRecord, kcTotalRecord1, kcTotalRecord2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpaceMedium,
              Container(
                width: screenWidth(context) - 40,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: kcVeryLightGrey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My  Actions",
                      style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        color: kcblackColor.withOpacity(0.65),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceSmall,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DashboardWidget("Action Items", "12",
                              actionItem, kcTotalLogin1, kcTotalLogin2),
                        ),
                        horizontalSpaceTiny,
                        Expanded(
                          child: DashboardWidget("Task", "12/12/2024", task,
                              kcLastLogin1, kcLastLogin2),
                        ),
                        horizontalSpaceTiny,
                        Expanded(
                            child: DashboardWidget("Approval", "12", approval,
                                kcLogin1, kcLogin2)),
                        horizontalSpaceTiny,
                        Expanded(
                          child: DashboardWidget("Reminders", "12", reminder,
                              kcTotalRecord1, kcTotalRecord2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "DashBoard",
                      style: TextStyle(
                          fontSize: getResponsiveMediumFontSize(context),
                          color: kcPrimaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                    const DashboardButton("Form Date", Icons.calendar_month),
                    const DashboardButton("To Date", Icons.calendar_month),
                    const DashboardButton("Search By Name ", Icons.search),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  DashBoardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashBoardViewModel();
}
