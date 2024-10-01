import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/create_view_health_and_safety_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

class ReportRow extends ViewModelWidget<CreateViewHealthAndSafetyViewModel> {
  const ReportRow({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CreateViewHealthAndSafetyViewModel viewModel,
  ) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Report No:",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Created by :",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Date & Time :",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Updated by :",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Date & Time :",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Source :",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Site :",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Project :",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "202407061956",
                style: TextStyle(
                  color: kcRedColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "Yousaf Bhatti",
                style: TextStyle(
                  color: kcskylueColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "06/07/2024",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "Yousaf Bhatti",
                style: TextStyle(
                  color: kcskylueColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              verticalSpaceTiny,
              const Text(
                "06/07/2024",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Mobile",
                style: TextStyle(
                  color: kcblackColor.withOpacity(0.65),
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 20,
                width: 129,
                title: "Please Select",
                items: viewModel.siteOption,
                selectedValue: viewModel.site,
                onChanged: viewModel.changeSite,
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 20,
                width: 129,
                title: "Please Select",
                items: viewModel.projectOption,
                selectedValue: viewModel.project,
                onChanged: viewModel.changeProject,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Status",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              verticalSpaceTiny,
              Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(color: kcblackColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Open",
                      style: TextStyle(
                        color: kcYellowColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: kcYellowColor),
                    )
                  ],
                ),
              ),
              verticalSpaceSmall,
              const Image(
                image: AssetImage(qrCode),
                width: 83,
                height: 83,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
