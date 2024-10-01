import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/investigation_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/widget/radio_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

class InvestigationWidget extends ViewModelWidget<InvestigationViewModel> {
  const InvestigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    InvestigationViewModel viewModel,
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
              verticalSpaceSmall,
              const Text(
                "Investigation Required",
                style: TextStyle(
                    color: kcblackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              verticalSpaceTiny,
              const Row(
                children: [
                  Expanded(
                      child: RadioButtonInvestigation(name: 'Yes', value: 3)),
                  Expanded(
                      child: RadioButtonInvestigation(name: 'No', value: 4)),
                ],
              ),
              verticalSpaceSmall,
              const Text(
                "Company Investigation",
                style: TextStyle(
                    color: kcblackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              verticalSpaceTiny,
              const Row(
                children: [
                  Expanded(
                      child: RadioButtonInvestigation(name: 'Yes', value: 3)),
                  Expanded(
                      child: RadioButtonInvestigation(name: 'No', value: 4)),
                ],
              ),
              verticalSpaceSmall,
              Text(
                "Target Date",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              const Textfield(
                height: 42,
                width: 350,
                suffixIcon: Icon(Icons.calendar_month),
              ),
              verticalSpaceSmall,
              Text(
                "Remaining Days",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              const Textfield(
                height: 42,
                width: 350,
              ),
            ],
          ),
        ));
  }
}
