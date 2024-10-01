import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/textfield/dropdown_field.dart';
import '../../../widgets/common/textfield/textfield.dart';
import '../template_details_viewmodel.dart';
import 'asset_prority.dart';

class AssetInfo extends ViewModelWidget<TemplateDetailsViewModel> {
  final bool islib;
  const AssetInfo({Key? key, required this.islib}) : super(key: key);

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
            verticalSpaceSmall,
            Text(
              "Asset System ID",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Serial Number",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Group",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Type",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Subtype",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Sub Subtype",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Description",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Other ID 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Other ID 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            Text(
              "Asset Priority",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            const AssetPrority(),
            verticalSpaceTiny,
            Text(
              "Manufacturer",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Manufacturing Year",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Registered On",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: kcgrey,
                ),
                height: 42,
                width: 350,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Registration Expiry Date",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: kcgrey,
                ),
                height: 42,
                width: 350,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Warranty Info",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: kcgrey,
                ),
                height: 42,
                width: 350,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Depreciation Life",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Info Extra List 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Info Extra List 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Info Extra List 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Info Extra Field 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Info Extra Field 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Info Extra Field 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  color: kcblackColor,
                  fontWeight: FontWeight.bold),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
          ],
        ),
      ),
    );
  }
}
