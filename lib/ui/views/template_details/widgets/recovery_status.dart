import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/template_details/widgets/browse_file.dart';
import 'package:stacked/stacked.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/common/textfield/dropdown_field.dart';
import '../../../widgets/common/textfield/textfield.dart';
import '../template_details_viewmodel.dart';

class RecoveryStatus extends ViewModelWidget<TemplateDetailsViewModel> {
  final bool islib;
  const RecoveryStatus({Key? key, required this.islib}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
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
            verticalSpaceTiny,
            const Text(
              "RecoveryStatus",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Recovery Time Objective - RTO (in hours)",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Recovery Point Objective - RPO (in hours)",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Maximum Tolerable Downtime (in hours)",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Mean Time To Recover (in hours)",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Picture(s) of Asset",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            islib
                ? Container(
                    width: 350,
                    height: 345,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Assets.images.reportCar.provider())),
                  )
                : BrowseFile(),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Overall Status",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Risk Register Ref",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Raci Raf",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Document Library",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
          ],
        ),
      ),
    );
  }
}
