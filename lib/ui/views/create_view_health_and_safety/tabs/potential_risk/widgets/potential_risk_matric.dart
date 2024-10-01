import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/potential_risk/potential_risk_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

class PotentialRiskMatric extends ViewModelWidget<PotentialRiskViewModel> {
  const PotentialRiskMatric({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PotentialRiskViewModel viewModel,
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
            const Text(
              "Severity",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
              height: 42,
              width: 350,
              title: "Please Select",
              items: viewModel.userinfo1,
              selectedValue: viewModel.userinfoVar1,
              onChanged: viewModel.changeUserinfo1,
            ),
            verticalSpaceSmall,
            const Text(
              "Likelyhood",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
              height: 42,
              width: 350,
              title: "Please Select",
              items: viewModel.userinfo1,
              selectedValue: viewModel.userinfoVar1,
              onChanged: viewModel.changeUserinfo1,
            ),
          ],
        ),
      ),
    );
  }
}
