import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/incidents/incidents_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ReportIncident extends ViewModelWidget<IncidentsViewModel> {
  final String report;
  final String createdBy;
  final String dateCreatedBy;
  final String updatedBy;
  final String dateUpdatedBy;
  final String status;
  final String description;
  final Color statusColor;

  const ReportIncident(
      {Key? key,
      required this.report,
      required this.createdBy,
      required this.dateCreatedBy,
      required this.updatedBy,
      required this.dateUpdatedBy,
      required this.status,
      required this.description,
      required this.statusColor})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    IncidentsViewModel viewModel,
  ) {
    return Container(
      width: 375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kcreport,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Report #",
                    style: TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    "Created By:",
                    style: TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    "Date & Time",
                    style: TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    "Updated By:",
                    style: TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    "Date & Time",
                    style: TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    "Description",
                    style: TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                  Text(
                    "Status:",
                    style: TextStyle(color: kcblackColor, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    report,
                    style: const TextStyle(color: kcPrimaryColor, fontSize: 12),
                  ),
                  Text(
                    createdBy,
                    style: const TextStyle(color: kcPrimaryColor, fontSize: 12),
                  ),
                  Text(
                    dateCreatedBy,
                    style: const TextStyle(color: kcPrimaryColor, fontSize: 12),
                  ),
                  Text(
                    updatedBy,
                    style: const TextStyle(color: kcPrimaryColor, fontSize: 12),
                  ),
                  Text(
                    dateUpdatedBy,
                    style: const TextStyle(color: kcPrimaryColor, fontSize: 12),
                  ),
                  Text(
                    description,
                    style: const TextStyle(color: kcPrimaryColor, fontSize: 12),
                  ),
                  Text(
                    status,
                    style: TextStyle(
                        color: statusColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: kcPrimaryColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Open",
                          style: TextStyle(
                              fontSize: 12,
                              color: kcwhiteColor,
                              fontWeight: FontWeight.w700),
                        ),
                        horizontalSpaceSmall,
                        Icon(
                          Icons.open_in_new,
                          color: kcwhiteColor,
                          size: 14,
                        )
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
