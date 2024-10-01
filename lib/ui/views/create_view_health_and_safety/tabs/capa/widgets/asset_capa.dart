import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/capa/capa_viewmodel.dart';
import 'package:stacked/stacked.dart';

class AssetCapa extends ViewModelWidget<CapaViewModel> {
  const AssetCapa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CapaViewModel viewModel,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: viewModel.checkvalue1,
              onChanged: (value) {
                viewModel.changeCheckValue1(value);
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
              value: viewModel.checkvalue1,
              onChanged: (value) {
                viewModel.changeCheckValue1(value);
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
              value: viewModel.checkvalue1,
              onChanged: (value) {
                viewModel.changeCheckValue1(value);
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
              value: viewModel.checkvalue1,
              onChanged: (value) {
                viewModel.changeCheckValue1(value);
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
              value: viewModel.checkvalue1,
              onChanged: (value) {
                viewModel.changeCheckValue1(value);
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
