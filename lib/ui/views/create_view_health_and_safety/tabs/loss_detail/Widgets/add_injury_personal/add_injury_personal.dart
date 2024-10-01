import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/loss_detail_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

class AddInjuryPersonal extends ViewModelWidget<LossDetailViewModel> {
  const AddInjuryPersonal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LossDetailViewModel viewModel,
  ) {
    return Container(
        width: 399,
        decoration: BoxDecoration(
          border: Border.all(color: kcPrimaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Injured Person Name ",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              const Textfield(width: 350),
              verticalSpaceTiny,
              Text(
                "Injury Type",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
              ),
              verticalSpaceTiny,
              Text(
                "Details of Injury /Loss",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Other Injury",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Cost Incurred",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Other",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Description",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                maxcond: true,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Treatment",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Time Loss",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Loss Value 1",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
              verticalSpaceTiny,
              Text(
                "Loss Value 2",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              const Textfield(
                height: 42,
                width: 350,
              ),
            ],
          ),
        ));
  }
}
