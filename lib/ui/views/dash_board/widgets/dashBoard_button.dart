import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/dash_board/dash_board_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DashboardButton extends ViewModelWidget<DashBoardViewModel> {
  final String title;
  final IconData icon;

  const DashboardButton(this.title, this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    DashBoardViewModel viewModel,
  ) {
    return Container(
        // width: 75,
        height: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: kcblackColor)),
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: kcblackColor.withOpacity(0.65), fontSize: 8),
              ),
              horizontalSpaceSmall,
              Icon(
                icon,
                size: 10,
              ),
            ],
          ),
        ));
  }
}
