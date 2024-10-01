import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/Account%20and%20Setting/account_and_setting/account_and_setting_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Accountfield extends ViewModelWidget<AccountAndSettingViewModel> {
  final String name;
  final String content;
  final bool showIcon;
  final VoidCallback? ontap;
  const Accountfield(this.name, this.content, this.showIcon, this.ontap,
      {Key? key})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AccountAndSettingViewModel viewModel,
  ) {
    return Center(
      child: Container(
        height: 53,
        width: 341,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kcgrey)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: kcPrimaryColor,
                  fontSize: getResponsiveMediumFontSize(context),
                ),
              ),
              Row(
                children: [
                  Text(
                    content,
                    style: const TextStyle(fontSize: 14, color: kcblackColor),
                  ),
                  if (showIcon)
                    InkWell(
                      onTap: ontap,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
