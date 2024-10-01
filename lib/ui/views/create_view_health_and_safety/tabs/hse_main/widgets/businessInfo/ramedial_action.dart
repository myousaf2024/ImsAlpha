import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/radio_button1.dart';
import 'package:stacked/stacked.dart';

class RamedialAction extends ViewModelWidget<HseMainViewModel> {
  const RamedialAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
  ) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpaceSmall,
        Text(
          "Remedial Actions",
          style: TextStyle(color: kcblackColor, fontWeight: FontWeight.w700),
        ),
        Row(children: [
          Expanded(
              child: RadioButton1(
            name: 'Number for pending',
            value: 0,
          )),
          Expanded(
            child: RadioButton1(name: 'Number of closes', value: 1),
          ),
        ])
      ],
    );
  }
}
