import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:stacked/stacked.dart';

import '../../../../widgets/common/textfield/dropdown_field.dart';
import '../../../../widgets/common/textfield/textfield.dart';
import 'action_item_viewmodel.dart';

class ActionItemView extends StackedView<ActionItemViewModel> {
  const ActionItemView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ActionItemViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Header(
          name: "ActionItemView",
          showButton: true,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  verticalSpaceSmall,
                  Text(
                    "Created On",
                    style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcblackColor),
                  ),
                  verticalSpaceTiny,
                  const Textfield(
                    title: "Select Date",
                    height: 42,
                    width: 350,
                    suffixIcon: Icon(Icons.calendar_month),
                  ),
                  verticalSpaceSmall,
                  Text(
                    "Created By",
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
                    "Summary",
                    style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcblackColor),
                  ),
                  verticalSpaceTiny,
                  const Textfield(
                    height: 42,
                    width: 350,
                  ),
                  verticalSpaceSmall,
                  Text(
                    "Responsibility",
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
                    "Details",
                    style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcblackColor),
                  ),
                  verticalSpaceTiny,
                  const Textfield(
                    height: 42,
                    width: 350,
                  ),
                  verticalSpaceSmall,
                  Text(
                    "ABC",
                    style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcblackColor),
                  ),
                  verticalSpaceTiny,
                  const Textfield(
                    height: 42,
                    width: 350,
                  ),
                  verticalSpaceSmall,
                  Text(
                    "Target",
                    style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcblackColor),
                  ),
                  verticalSpaceTiny,
                  const Textfield(
                    title: "Select Date",
                    height: 42,
                    width: 350,
                    suffixIcon: Icon(Icons.calendar_month),
                  ),
                  verticalSpaceSmall,
                  Text(
                    "Updated By",
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
                    "Close",
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
                    "Acknowledgement",
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
                    "If Event is Catastophic",
                    style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcblackColor),
                  ),
                  verticalSpaceTiny,
                  const Textfield(
                    height: 42,
                    width: 350,
                  ),
                  verticalSpaceSmall,
                  Text(
                    "Priority",
                    style: TextStyle(
                        fontSize: getResponsiveSmallFontSize(context),
                        fontWeight: FontWeight.w700,
                        color: kcblackColor),
                  ),
                  verticalSpaceTiny,
                  const Textfield(
                    height: 42,
                    width: 350,
                  ),
                ],
              ),
            )),
      ],
    );
  }

  @override
  ActionItemViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ActionItemViewModel();
}
