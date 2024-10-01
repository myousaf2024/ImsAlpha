import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/create_view_health_and_safety_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/widgets/report_row.dart';
import 'package:stacked/stacked.dart';

class ReportWidget extends ViewModelWidget<CreateViewHealthAndSafetyViewModel> {
  const ReportWidget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CreateViewHealthAndSafetyViewModel viewModel,
  ) {
    return Column(children: [
      verticalSpaceMedium,
      Container(
        width: 377,
        //  height: 240,
        decoration: BoxDecoration(border: Border.all(color: kcDarkBlueColor)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const ReportRow(),
              verticalSpaceSmall,
              Row(
                mainAxisSize: MainAxisSize.min,
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
                    "HSE",
                    style: TextStyle(
                      color: kcblackColor,
                    ),
                  ),
                  Checkbox(
                    value: viewModel.checkvalue2,
                    onChanged: (value) {
                      viewModel.changeCheckValue2(value);
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                  const Text(
                    "Social",
                    style: TextStyle(
                      color: kcblackColor,
                    ),
                  ),
                  Checkbox(
                    value: viewModel.checkvalue3,
                    onChanged: (value) {
                      viewModel.changeCheckValue3(value);
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                  const Text(
                    "Service Quality",
                    style: TextStyle(
                      color: kcblackColor,
                    ),
                  ),
                  Checkbox(
                    value: viewModel.checkvalue4,
                    onChanged: (value) {
                      viewModel.changeCheckValue4(value);
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                  const Text(
                    "Other",
                    style: TextStyle(
                      color: kcblackColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}
