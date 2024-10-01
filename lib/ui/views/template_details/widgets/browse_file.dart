import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_strings.dart';
import '../template_details_viewmodel.dart';

class BrowseFile extends ViewModelWidget<TemplateDetailsViewModel> {
  const BrowseFile({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
        color: kcgrey,
        strokeWidth: 2,
        dashPattern: const [10, 5],
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        child: const SizedBox(
          width: 350,
          height: 400,
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
                    color: kcgrey, fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
