import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_strings.dart';
import '../template_details_viewmodel.dart';

class LibraryReport extends ViewModelWidget<TemplateDetailsViewModel> {
  const LibraryReport({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
  ) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: kcblackColor.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Car",
                style: TextStyle(
                  color: kcdarkgreenColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Approved By:",
                    style: TextStyle(
                      color: kcblackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  horizontalSpaceTiny,
                  Text(
                    "Alex Peter",
                    style: TextStyle(
                      color: kcskylueColor, // Blue for the name
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                // flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    horizontalSpaceMedium,
                    verticalSpaceSmall,
                    Text(
                      "Form ID",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Created by :",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Date & Time :",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Updated by :",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Date & Time :",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Site :",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpaceSmall,
                    const Text(
                      "202407061956",
                      style: TextStyle(
                        color: kcRedColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Yousaf Bhatti",
                      style: TextStyle(
                        color: kcskylueColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "06/07/2024",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Yousaf Bhatti",
                      style: TextStyle(
                        color: kcskylueColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "06/07/2024",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      "Lahore",
                      style: TextStyle(
                        color: kcblackColor.withOpacity(0.65),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpaceSmall,
                    const Text(
                      "Status",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpaceTiny,
                    Container(
                      height: 25,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: kcblackColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Open",
                            style: TextStyle(
                              color: kcYellowColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: kcYellowColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                    const Image(
                      image: AssetImage(qrCode),
                      width: 90,
                      height: 90,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
