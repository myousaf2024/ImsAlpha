import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/textfield/dropdown_field.dart';
import '../../../widgets/common/textfield/textfield.dart';
import '../template_details_viewmodel.dart';

class Createassettype extends ViewModelWidget<TemplateDetailsViewModel> {
  final bool islib;
  const Createassettype({Key? key, required this.islib}) : super(key: key);

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
            Text(
              "Asset Type",
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
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Asset Status",
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
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Asset Record Created By",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
              height: 42,
              width: 350,
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Date of Record Creation",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
              height: 42,
              width: 350,
              title: "Select Date",
              suffixIcon: Icon(Icons.calendar_month),
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Last Modified By",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
              height: 42,
              width: 350,
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Last Modified Date",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
              height: 42,
              width: 350,
              title: "Select Date",
              suffixIcon: Icon(Icons.calendar_month),
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Doc Info Extra List 1",
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
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Doc Info Extra List 2",
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
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Doc Info Extra List 3",
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
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Doc Info Extra Field 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
              height: 42,
              width: 350,
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Doc Info Extra Field 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
              height: 42,
              width: 350,
              isfill: islib ? true : false,
            ),
            verticalSpaceTiny,
            Text(
              "Doc Info Extra Field 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
              height: 42,
              width: 350,
              isfill: islib ? true : false,
            ),
          ],
        ),
      ),
    );
  }
}
