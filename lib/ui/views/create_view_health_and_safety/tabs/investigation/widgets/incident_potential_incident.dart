import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/investigation_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'widget/radio_button.dart';

class IncidentPotentialIncident
    extends ViewModelWidget<InvestigationViewModel> {
  const IncidentPotentialIncident({Key? key}) : super(key: key);

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
              Text(
                "ABC",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: viewModel.potentialIncident.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return RadioButtonInvestigation(
                        name: viewModel.potentialIncident[index], value: index);
                  })
            ],
          ),
        ));
  }
}
