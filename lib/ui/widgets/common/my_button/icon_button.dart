import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'my_button_model.dart';

class MyIconButton extends StackedView<MyButtonModel> {
  final String? title;
  final VoidCallback? onTap;
  final double width;
  final double height;
  final double? fontSize;
  final bool loading;
  final Color backgroundColor;
  final IconData? leftIcon;
  final IconData? rightIcon;

  const MyIconButton({
    super.key,
    this.title,
    this.onTap,
    this.width = 0,
    this.height = 20,
    this.fontSize,
    this.loading = false,
    this.backgroundColor = kcPrimaryColor,
    this.leftIcon,
    this.rightIcon,
  });

  @override
  Widget builder(
    BuildContext context,
    MyButtonModel viewModel,
    Widget? child,
  ) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        iconColor: kcVeryLightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(width, height),
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leftIcon != null)
            Icon(leftIcon, size: 16, color: kcVeryLightGrey),
          if (leftIcon != null) const SizedBox(width: 4.0),
          if (title != null)
            Text(
              title!,
              style: TextStyle(
                fontSize: fontSize ?? 16,
                color: kcVeryLightGrey,
              ),
            ),
          if (rightIcon != null) const SizedBox(width: 4.0),
          if (rightIcon != null)
            Icon(rightIcon, size: 16, color: kcVeryLightGrey),
        ],
      ),
    );
  }

  @override
  MyButtonModel viewModelBuilder(BuildContext context) => MyButtonModel();
}
