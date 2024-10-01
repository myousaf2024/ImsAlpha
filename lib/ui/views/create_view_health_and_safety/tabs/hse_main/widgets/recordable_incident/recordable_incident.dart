import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/radio_button1.dart';
import 'package:stacked/stacked.dart';

class RecordableIncident extends ViewModelWidget<HseMainViewModel> {
  const RecordableIncident({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
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
              Text(
                "Recordable Incident",
                style: TextStyle(
                    color: kcblackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              Row(
                children: [
                  Expanded(child: RadioButton1(name: 'Yes', value: 3)),
                  Expanded(child: RadioButton1(name: 'No', value: 4)),
                ],
              ),
            ],
          ),
        ));
  }
}
