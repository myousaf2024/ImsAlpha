import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/template_details/widgets/browse_file.dart';
import 'package:stacked/stacked.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/common/textfield/dropdown_field.dart';
import '../../../widgets/common/textfield/textfield.dart';
import '../template_details_viewmodel.dart';

class ActionItemSection extends ViewModelWidget<TemplateDetailsViewModel> {
  final bool islib;
  const ActionItemSection({Key? key, required this.islib}) : super(key: key);

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
              "Action Item",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Status",
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
              "Responsibility Of User",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Summary",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Details",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Other Details",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Target Date",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
                height: 42,
                width: 350,
                title: "Select Date",
                suffixIcon: const Icon(Icons.calendar_month),
                isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Updated By",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Acknowledgement",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Approver Name",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Approver Comment",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Approve Date",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
                height: 42,
                width: 350,
                title: "Select Date",
                suffixIcon: const Icon(Icons.calendar_month),
                isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Site",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Project",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Priority",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
            verticalSpaceTiny,
            const Text(
              "Asset Certification",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
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
                : const BrowseFile(),
            verticalSpaceTiny,
            const Text(
              "Attachment Details",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            Textfield(height: 42, width: 350, isfill: islib ? true : false),
          ],
        ),
      ),
    );
  }
}
