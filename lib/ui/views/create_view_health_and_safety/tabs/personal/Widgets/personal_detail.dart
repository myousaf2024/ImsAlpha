import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/Widgets/personal_radiobutton.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/personal_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

class PersonalDetail extends ViewModelWidget<PersonalViewModel> {
  const PersonalDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalViewModel viewModel,
  ) {
    return Container(
        width: 399,
        height: 900,
        decoration: BoxDecoration(
          border: Border.all(color: kcPrimaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceTiny,
                Text(
                  "Name",
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
                verticalSpaceTiny,
                Text(
                  "Age",
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
                verticalSpaceTiny,
                Text(
                  "Gender",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Seniority",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Position",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Employee Type",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Job Function",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Hrs Since Last Date",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Hrs Slept Last Time",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Hrs On Duty",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Info",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 30,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "Employee Manager Name",
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
                verticalSpaceTiny,
                Text(
                  "Employee Number",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "National ID",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "Passport Number",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "Employee No",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "Home Address",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "City",
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
                verticalSpaceTiny,
                Text(
                  "Country",
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
                verticalSpaceTiny,
                Text(
                  "Phone",
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
                verticalSpaceTiny,
                Text(
                  "Emergency Contact",
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
                verticalSpaceTiny,
                Text(
                  "Emergency Contact Relation",
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
                verticalSpaceTiny,
                Text(
                  "Email ID Personal",
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
                verticalSpaceTiny,
                Text(
                  "Male/Female",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceSmall,
                Text(
                  "Shift",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                const PersonalRadiobutton(),
              ],
            ),
          ),
        ));
  }
}
