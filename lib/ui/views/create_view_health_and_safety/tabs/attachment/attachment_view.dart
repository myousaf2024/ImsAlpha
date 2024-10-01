import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'attachment_viewmodel.dart';

class AttachmentView extends StackedView<AttachmentViewModel> {
  const AttachmentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AttachmentViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(
          name: "Add Attachment / Description",
          showButton: true,
        ),
        Container(
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
                  verticalSpaceTiny,
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
              )),
        ),
      ],
    );
  }

  @override
  AttachmentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AttachmentViewModel();
}
