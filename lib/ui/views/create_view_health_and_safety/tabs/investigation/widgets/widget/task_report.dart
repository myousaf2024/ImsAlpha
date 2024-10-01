import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/investigation_viewmodel.dart';
import 'package:stacked/stacked.dart';


class TaskReport extends ViewModelWidget<InvestigationViewModel> {
  final String taskNo;
  final String taskName;
  final String description;
  final String assignTo;
  final String assignDate;
  final String targetDate;
  final String notes;

  const TaskReport({
    Key? key,
    required this.taskNo,
    required this.taskName,
    required this.description,
    required this.assignTo,
    required this.assignDate,
    required this.targetDate,
    required this.notes,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    InvestigationViewModel viewModel,
  ) {
    return Container(
      width: 375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kcreport,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Task #",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Task Name",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Assign to ",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "AssignDate",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Target Date",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Notes",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    taskNo,
                    style: const TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    taskName,
                    style: const TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    description,
                    style: const TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    assignTo,
                    style: const TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    assignDate,
                    style: const TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    targetDate,
                    style: const TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    notes,
                    style: const TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 1.0,
                  height: 180,
                  color: kcblackColor,
                ),
                horizontalSpaceSmall,
                const Icon(
                  Icons.delete,
                  color: kcRedColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
