import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/residual_risk/widgets/potential_risk_matric.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

import 'residual_risk_viewmodel.dart';

class ResidualRiskView extends StackedView<ResidualRiskViewModel> {
  const ResidualRiskView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResidualRiskViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        const Header(
          name: 'Residual Risk',
        ),
        Container(
          width: 399,
          decoration: BoxDecoration(
            border: Border.all(color: kcPrimaryColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceTiny,
                const Text(
                  "Severity 1",
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
                  "Severity 2",
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
                  "Severity 3",
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
                  "Severity 4",
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
                  "Severity 5",
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
                  "Likelyhood 1",
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
                  "Likelyhood 2",
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
                  "Likelyhood 2",
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
                  "Likelyhood 3",
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
                  "Likelyhood 4",
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
                  "Likelyhood 5",
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
        ),
        verticalSpaceSmall,
        const Header(
          name: 'Potential Risk Matrix',
        ),
        const ResidualRiskMatric(),
        verticalSpaceSmall,
      ],
    );
  }

  @override
  ResidualRiskViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResidualRiskViewModel();
}
