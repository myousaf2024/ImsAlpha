import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../template_details_viewmodel.dart';

class DetailsTemplate extends ViewModelWidget<TemplateDetailsViewModel> {
  final bool lib;
  const DetailsTemplate({Key? key, required this.lib}) : super(key: key);

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
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Template Name :",
                      style: TextStyle(
                          color: kcblackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    verticalSpaceSmall,
                    Text(
                      "Description :",
                      style: TextStyle(
                          color: kcblackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ],
                ),
                horizontalSpaceSmall,
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yousaf Bhatti",
                        style: TextStyle(color: kcblackColor, fontSize: 16),
                      ),
                      verticalSpaceSmall,
                      Text(
                        "ueiieutirutirutirturituiturtiruturiutirutirutriutriturituirturitturituirturgndjnjsndjanknj",
                        style: TextStyle(color: kcblackColor, fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpaceSmall,
          ],
        ),
      ),
    );
  }
}
