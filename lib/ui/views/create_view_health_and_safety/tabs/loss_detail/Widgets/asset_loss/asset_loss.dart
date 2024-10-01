import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/asset_loss/asset_check_box.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/asset_loss/information_checkbox.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/loss_detail_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

class AssetLoss extends ViewModelWidget<LossDetailViewModel> {
  const AssetLoss({
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
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,
            const Text(
              "Assets",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            AssetCheckBox(),
            Text(
              "Asset Loss Value 1",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
              width: 350,
              title: "Enter Value",
            ),
            verticalSpaceSmall,
            Text(
              "Asset Loss Value 2",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
              width: 350,
              title: "Enter Value",
            ),
            Text(
              "Description",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
              width: 350,
              maxlines: 5,
              maxcond: true,
            ),
            verticalSpaceTiny,
            InformationCheckbox(),
            Text(
              "Asset Loss Information Value 1",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
              width: 350,
              title: "Enter Value",
            ),
            verticalSpaceSmall,
            Text(
              "Asset Loss Information Value 2",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
              width: 350,
              title: "Enter Value",
            ),
          ],
        ),
      ),
    );
  }
}
