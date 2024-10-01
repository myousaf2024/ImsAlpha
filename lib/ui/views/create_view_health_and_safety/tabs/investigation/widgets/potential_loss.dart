import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/investigation_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

class PotentialLoss extends ViewModelWidget<InvestigationViewModel> {
  const PotentialLoss({Key? key}) : super(key: key);

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
                "Category",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.teamOption,
                selectedValue: viewModel.teamMember,
                onChanged: viewModel.changeUserinfo1,
              ),
              verticalSpaceSmall,
              Text(
                "Sub Category",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.teamOption,
                selectedValue: viewModel.teamMember,
                onChanged: viewModel.changeUserinfo1,
              ),
              verticalSpaceSmall,
              Text(
                "Sub Sub Category",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.teamOption,
                selectedValue: viewModel.teamMember,
                onChanged: viewModel.changeUserinfo1,
              ),
            ],
          ),
        ));
  }
}
