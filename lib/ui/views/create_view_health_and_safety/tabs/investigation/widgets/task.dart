import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/investigation_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/widget/task_report.dart';
import 'package:stacked/stacked.dart';

class Task extends ViewModelWidget<InvestigationViewModel> {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    InvestigationViewModel viewModel,
  ) {
    return Container(
        width: 399,
        decoration: BoxDecoration(
          border: Border.all(color: kcPrimaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceSmall,
              Text(
                "Task List",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              const TaskReport(
                  taskNo: '2334354555',
                  taskName: '2334354555',
                  description: 'Blahemikrji',
                  assignTo: 'YousafBhat@gmail.com',
                  assignDate: '06/07/2024 | 00:07 AM ',
                  targetDate: 'YousafBhat',
                  notes: 'wwegfwgfyyrgfyrgygyrgyfgrygfyrgyfgyr'),
              verticalSpaceSmall,
              const TaskReport(
                  taskNo: '2334354555',
                  taskName: '2334354555',
                  description: 'Blahemikrji',
                  assignTo: 'YousafBhat@gmail.com',
                  assignDate: '06/07/2024 | 00:07 AM ',
                  targetDate: 'YousafBhat',
                  notes: 'wwegfwgfyyrgfyrgygyrgyfgrygfyrgyfgyr'),
            ],
          ),
        ));
  }
}
