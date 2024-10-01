import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/investigation_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

class ExternalMembers extends ViewModelWidget<InvestigationViewModel> {
  const ExternalMembers({Key? key}) : super(key: key);

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
                "Name",
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
              verticalSpaceSmall,
              Text(
                "Company",
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
              verticalSpaceSmall,
              Text(
                "Job Title",
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
              verticalSpaceSmall,
              Text(
                "ID",
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
              verticalSpaceSmall,
              Text(
                "Contact",
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
              verticalSpaceSmall,
              Text(
                "Third Part Investigation",
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
              verticalSpaceSmall,
              Text(
                "Regulatory Authority",
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
              verticalSpaceSmall,
              Text(
                "Minutes Notes",
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
