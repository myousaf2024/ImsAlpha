import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/checkBox2.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/checkbox1.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/checkbox3.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/clerifyWidgets.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/radio_button.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/radio_button1.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

class UserInfo extends ViewModelWidget<HseMainViewModel> {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
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
            Text(
              "Types of Users",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            const Row(
              children: [
                Expanded(
                    child: RadioButton(
                  name: 'Intern',
                  value: 0,
                )),
                Expanded(child: RadioButton(name: 'Employee', value: 1)),
                Expanded(
                    child: RadioButton(
                  name: "Contractor",
                  value: 2,
                )),
              ],
            ),
            Row(
              children: [
                const Expanded(child: RadioButton(name: 'Consumer', value: 3)),
                const Expanded(
                    child: RadioButton(name: 'External User', value: 4)),
                Expanded(child: Container())
              ],
            ),
            Text(
              "Radio",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            const Row(
              children: [
                Expanded(
                    child: RadioButton1(
                  name: 'Radio1',
                  value: 0,
                )),
                Expanded(
                  child: RadioButton1(name: 'Radio2', value: 1),
                ),
                Expanded(
                    child: RadioButton1(
                  name: "Radio3",
                  value: 2,
                )),
              ],
            ),
            Row(
              children: [
                const Expanded(child: RadioButton1(name: 'Radio4', value: 3)),
                const Expanded(child: RadioButton1(name: 'Radio5', value: 4)),
                Expanded(child: Container())
              ],
            ),
            Text(
              "Check 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceSmall,
            const Checkbox1(),
            Text(
              "Check 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceSmall,
            const Checkbox2(),
            Text(
              "Check 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceSmall,
            const Checkbox3(),
            Text(
              "List1",
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
              "List2",
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
              "List3",
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
              "Clerify",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            const Clerifywidgets()
          ],
        ),
      ),
    );
  }
}
