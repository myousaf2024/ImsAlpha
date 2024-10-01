import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

class TypesIncident extends ViewModelWidget<HseMainViewModel> {
  const TypesIncident({
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Type of Incident",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
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
            const Text(
              "Description ",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            const Textfield(
              width: 350,
              maxcond: true,
              maxlines: 5,
            ),
            const Text(
              "Upload Attachment ",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            DottedBorder(
              color: kcgrey,
              strokeWidth: 2,
              dashPattern: const [
                10,
                5
              ], // Adjust the dash and gap lengths as needed
              borderType: BorderType.RRect,
              radius: const Radius.circular(8),
              child: const SizedBox(
                width: 350,
                height: 608,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(uploadFile),
                      width: 51,
                      height: 51,
                    ),
                    Text(
                      "Drag & Drop Files",
                      style: TextStyle(
                          color: kcblackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                          color: kcblackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Text(
                      "Browse",
                      style: TextStyle(
                          color: kcPrimaryColor,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          fontSize: 16),
                    ),
                    Text(
                      "Maximum file size : 30mb",
                      style: TextStyle(
                          color: kcgrey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
