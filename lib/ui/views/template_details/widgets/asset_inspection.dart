import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/common/textfield/dropdown_field.dart';
import '../../../widgets/common/textfield/textfield.dart';
import '../template_details_viewmodel.dart';
import 'browse_file.dart';
import 'inspection_questions.dart';

class AssetInspection extends ViewModelWidget<TemplateDetailsViewModel> {
  final bool islib;
  const AssetInspection({Key? key, required this.islib}) : super(key: key);

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
            Text(
              "Inspection Done By",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
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
              "Person Name (Internal Inspection)",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Company Name (External Inspection)",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Inspection Certificate Issuing Authority",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
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
              "Inspection Frequency",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Inspection Date",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(
                height: 42,
                width: 350,
                suffixIcon: Icon(Icons.calendar_month),
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Inspection Reports",
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
                            image: Assets.images.assetCertificate.provider())),
                  )
                : BrowseFile(),
            Text(
              "Inspection Approval Status",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Approver Comments",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Other Reports",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
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
            Text(
              "Asset Parts / Components To Be Inspected",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Inspection Notes",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            Textfield(
                height: 42,
                width: 350,
                title: "Select Date",
                suffixIcon: Icon(Icons.calendar_month),
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Inspection Checklist",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Inspection Checklist Notes",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            const InspectionQuestions(
              question1: "Inspection Question 1",
              result: true,
            ),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 2", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 3", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 4", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 5", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 6", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 7", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 8", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 9", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 10", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 11", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 12", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 13", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 14", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 15", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 16", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 17", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 18", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 19", result: true),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Question 20", result: true),
            verticalSpaceSmall,
            Text(
              "Inspection Result Observations",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceSmall,
            const InspectionQuestions(
                question1: "Inspection Result", result: false),
            verticalSpaceTiny,
            Text(
              "Inspection Report",
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
                            image: Assets.images.inspectionTruck.provider())),
                  )
                : BrowseFile(),
            verticalSpaceTiny,
            Text(
              "Asset Inspection Extra List 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Parts Replaced",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Inspection Extra List 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Inspection Extra List 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
                height: 42,
                width: 350,
                title: "Please Select",
                items: viewModel.userinfo1,
                selectedValue: viewModel.userinfoVar1,
                onChanged: viewModel.changeUserinfo1,
                isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Inspection Extra Field 1",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Inspection Extra Field 2",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            Text(
              "Asset Inspection Extra Field 3",
              style: TextStyle(
                  fontSize: getResponsiveSmallFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcblackColor),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
          ],
        ),
      ),
    );
  }
}
