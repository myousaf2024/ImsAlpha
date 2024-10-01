import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/Widgets/personal_detail.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/Widgets/personal_radiobutton.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:stacked/stacked.dart';

import 'personal_viewmodel.dart';

class PersonalView extends StackedView<PersonalViewModel> {
  const PersonalView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PersonalViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        const Header(name: "Personal"),
        const PersonalDetail(),
        verticalSpaceTiny,
        const Header(
          name: "ABC1",
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
              children: [
                Text(
                  "ABC",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const PersonalRadiobutton(),
              ],
            ),
          ),
        ),
        verticalSpaceTiny,
        const Header(
          name: "XYZ1",
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
              children: [
                Text(
                  "XYZ1",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const PersonalRadiobutton(),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  PersonalViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PersonalViewModel();
}
