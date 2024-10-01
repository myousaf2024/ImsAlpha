import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/dash_board/dash_board_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DashboardWidget extends ViewModelWidget<DashBoardViewModel> {
  final String containerText;
  final String quantity;
  final String image;
  final Color containerColor1;
  final Color containerColor2;

  const DashboardWidget(this.containerText, this.quantity, this.image,
      this.containerColor1, this.containerColor2,
      {Key? key})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    DashBoardViewModel viewModel,
  ) {
    return Container(
      width: 110,
      height: 76,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(colors: [containerColor1, containerColor2]),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  containerText,
                  style: const TextStyle(fontSize: 11, color: kcwhiteColor),
                ),
                verticalSpaceTiny,
                Text(
                  quantity,
                  style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    color: kcwhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
