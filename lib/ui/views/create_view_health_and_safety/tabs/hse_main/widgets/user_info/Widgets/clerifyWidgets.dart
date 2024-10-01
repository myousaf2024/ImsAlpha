import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Clerifywidgets extends ViewModelWidget<HseMainViewModel> {
  const Clerifywidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: viewModel.clerify1,
              onChanged: (value) {
                viewModel.clerifyValue1(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Classify 1",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceSmall,
            Checkbox(
              value: viewModel.clerify2,
              onChanged: (value) {
                viewModel.clerifyValue2(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Classify 1",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceSmall,
            Checkbox(
              value: viewModel.clerify3,
              onChanged: (value) {
                viewModel.clerifyValue3(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Classify 2",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: viewModel.clerify4,
              onChanged: (value) {
                viewModel.clerifyValue4(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Classify 4",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceSmall,
            Checkbox(
              value: viewModel.clerify5,
              onChanged: (value) {
                viewModel.clerifyValue5(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Classify 5",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
