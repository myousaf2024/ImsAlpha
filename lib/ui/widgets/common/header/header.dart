import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'header_model.dart';

class Header extends StackedView<HeaderModel> {
  final String name;
  final bool? showButton;

  const Header({
    super.key,
    required this.name,
    this.showButton,
  });

  @override
  Widget builder(
    BuildContext context,
    HeaderModel viewModel,
    Widget? child,
  ) {
    return Container(
      width: 399,
      height: 34,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0), // Adjust the radius as needed
          topRight: Radius.circular(8.0),
        ),
        color: kcPrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 7, bottom: 7, right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: showButton == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: getResponsiveMediumFontSize(context),
                fontWeight: FontWeight.w700,
                color: kcwhiteColor,
              ),
            ),
            if (showButton == true)
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0), // Rounded corners
                  ),
                  backgroundColor: kcskylueColor, // Button color
                ),
                child: const Text("Add More",
                    style: TextStyle(color: kcwhiteColor)),
              ),
          ],
        ),
      ),
    );
  }

  @override
  HeaderModel viewModelBuilder(
    BuildContext context,
  ) =>
      HeaderModel();
}
