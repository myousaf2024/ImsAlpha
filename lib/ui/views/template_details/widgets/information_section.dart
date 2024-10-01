import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/textfield/dropdown_field.dart';
import '../../../widgets/common/textfield/textfield.dart';
import '../template_details_viewmodel.dart';

class InformationSection extends ViewModelWidget<TemplateDetailsViewModel> {
  final bool islib;
  const InformationSection({Key? key, required this.islib}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
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
            verticalSpaceTiny,
            const Text(
              "Type of Asset",
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
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Linked Asset",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Other Asset",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Threat",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Threat Value",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Exposure Factor (EV)",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "SLE (AV*EF)",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Annualized Rate of Occurrence (ARO)",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "ALE (SLE*ARO)",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Vulnerability",
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
                isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Vulnerability Value",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Control Condition",
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
                isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Control Condition Value",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Risk Value",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Information Extra List 1",
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
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Location Extra List 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Location Extra List 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Location Extra Field 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Location Extra Field 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Location Extra Field 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Location Extra Field 4",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Location Extra Field 5",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
          ],
        ),
      ),
    );
  }
}
