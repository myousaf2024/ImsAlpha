import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'my_button_model.dart';

class MyButton extends StackedView<MyButtonModel> {
  final String? title;
  final VoidCallback? onTap;
  final double? width;
  final double height;
  final double? fontSize;
  final bool loading;
  final bool selected;
  final bool? isplus;
  final Color? color;

  const MyButton({
    super.key,
    this.title,
    this.onTap,
    required this.width,
    this.height = 55,
    this.fontSize,
    this.isplus,
    this.loading = false,
    this.selected = true,
    this.color,
  });

  @override
  Widget builder(
    BuildContext context,
    MyButtonModel viewModel,
    Widget? child,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color ?? (selected ? kcPrimaryColor : kcwhiteColor),
            border: Border.all(color: color ?? kcPrimaryColor)),
        child: isplus == true
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: kcwhiteColor,
                  ),
                  Text(
                    title ?? "",
                    style: TextStyle(
                        fontSize:
                            fontSize ?? getResponsiveLargeFontSize(context),
                        color: selected ? kcwhiteColor : kcPrimaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )
            : Center(
                child: Text(
                  title ?? "",
                  style: TextStyle(
                      fontSize: fontSize ?? getResponsiveLargeFontSize(context),
                      color: selected ? kcwhiteColor : kcPrimaryColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
      ),
    );
  }

  @override
  MyButtonModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyButtonModel();
}
