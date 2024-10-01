import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Checkbox2 extends ViewModelWidget<HseMainViewModel> {
  const Checkbox2({
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
              value: viewModel.check2value1,
              onChanged: (value) {
                viewModel.changeCheck2Value1(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "CheckBox1",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceMedium,
            Checkbox(
              value: viewModel.check2value2,
              onChanged: (value) {
                viewModel.changeCheck2Value2(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Car",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceMedium,
            Checkbox(
              value: viewModel.check2value3,
              onChanged: (value) {
                viewModel.changeCheck2Value3(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Truck",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: viewModel.check2value4,
              onChanged: (value) {
                viewModel.changeCheck2Value4(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Bikes",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceLarge,
            horizontalSpaceSmall,
            Checkbox(
              value: viewModel.check2value5,
              onChanged: (value) {
                viewModel.changeCheck2Value5(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "Buses",
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
