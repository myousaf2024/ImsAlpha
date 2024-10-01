import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/loss_detail_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

class InjuryLocation extends ViewModelWidget<LossDetailViewModel> {
  const InjuryLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LossDetailViewModel viewModel,
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
            verticalSpaceMedium,
            const Text(
              "Front Side Injuries",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
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
            verticalSpaceMedium,
            const Center(
                child: Image(
              image: AssetImage(injuryPerson),
              width: 238,
              height: 513,
            )),
            verticalSpaceMedium,
            const Text(
              "Back Side Injuries",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
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
            verticalSpaceMedium,
            const Center(
                child: Image(
              image: AssetImage(injuryPersonBack),
              width: 238,
              height: 513,
            )),
          ],
        ),
      ),
    );
  }
}
