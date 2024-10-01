import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../asset_screen_viewmodel.dart';

class AssetForm extends ViewModelWidget<AssetScreenViewModel> {
  final String image;
  final String title;
  final Function onPress;

  const AssetForm({
    Key? key,
    required this.title,
    required this.image,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetScreenViewModel viewModel,
  ) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        height: 80,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kcPrimaryColor)),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: kcPrimaryColor,
              ),
              child: Center(
                child: Image.asset(
                  image,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            horizontalSpaceMedium,
            Text(
              title,
              style: const TextStyle(
                  color: kcblackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
