import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/asset_loss/asset_check_box.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/event_category/event_category_radiobutton.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/loss_detail_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

class EventCategory extends ViewModelWidget<LossDetailViewModel> {
  const EventCategory({
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
            Text(
              "Event Categorization Condition",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            const EventCategoryRadiobutton(),
            verticalSpaceTiny,
            Text(
              "Event Categorization Checkbox",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceSmall,
            const AssetCheckBox(),
            verticalSpaceTiny,
            Text(
              "Event Categorization",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            const EventCategoryRadiobutton(),
            verticalSpaceTiny,
            Text(
              "Event Categorization Condition 19",
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
              "Event Categorization Condition 20",
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
              "Event Categorization Other",
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
          ],
        ),
      ),
    );
  }
}
