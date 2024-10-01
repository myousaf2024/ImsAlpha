import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../template_details_viewmodel.dart';

class InspectionQuestions extends ViewModelWidget<TemplateDetailsViewModel> {
  final String question1;
  final bool result;
  const InspectionQuestions(
      {Key? key, required this.question1, required this.result})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question1,
          style:
              const TextStyle(color: kcblackColor, fontWeight: FontWeight.w700),
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
            Text(
              result ? "CheckBox1" : "NA",
              style: const TextStyle(
                color: kcblackColor,
              ),
            ),
            horizontalSpaceSmall,
            if (!result) horizontalSpaceSmall,
            Checkbox(
              value: viewModel.checkvalue1,
              onChanged: (value) {
                viewModel.changeCheckValue1(value);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            Text(
              result ? "CheckBox2" : "Fail",
              style: const TextStyle(
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
            Text(
              result ? "CheckBox4" : "Pass",
              style: const TextStyle(
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
            Text(
              result ? "CheckBox5" : "Other",
              style: const TextStyle(
                color: kcblackColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
