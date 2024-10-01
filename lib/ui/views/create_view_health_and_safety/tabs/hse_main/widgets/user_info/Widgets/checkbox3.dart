import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Checkbox3 extends ViewModelWidget<HseMainViewModel> {
  const Checkbox3({
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
              value: viewModel.check3value1,
              onChanged: (value) {
                viewModel.changeCheck3Value1(value);
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
            horizontalSpaceSmall,
            Checkbox(
              value: viewModel.check3value2,
              onChanged: (value) {
                viewModel.changeCheck3Value2(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "CheckBox2",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceSmall,
            Checkbox(
              value: viewModel.check3value3,
              onChanged: (value) {
                viewModel.changeCheck3Value3(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "CheckBox3",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: viewModel.check3value4,
              onChanged: (value) {
                viewModel.changeCheck3Value4(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "CheckBox4",
              style: TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceSmall,
            Checkbox(
              value: viewModel.check3value5,
              onChanged: (value) {
                viewModel.changeCheck3Value5(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            const Text(
              "CheckBox5",
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
