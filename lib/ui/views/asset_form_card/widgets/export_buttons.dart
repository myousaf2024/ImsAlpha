import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/icon_button.dart';
import 'package:stacked/stacked.dart';

import '../asset_form_card_viewmodel.dart';
import 'filter_bar.dart';

class AssetFormCardViewExportsButtons
    extends ViewModelWidget<AssetFormCardViewModel> {
  final bool islib;

  const AssetFormCardViewExportsButtons({
    Key? key,
    required this.islib,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetFormCardViewModel viewModel,
  ) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            if (islib) ...[
              const AssetFormCardViewFilterBar(),
              horizontalSpaceSmall,
            ],
            MyIconButton(
              title: "PDF",
              leftIcon: Icons.picture_as_pdf,
              backgroundColor: Colors.green,
              onTap: () {},
            ),
            horizontalSpaceSmall,
            MyIconButton(
              title: "Excel",
              leftIcon: Icons.table_chart,
              backgroundColor: Colors.orange,
              onTap: () {},
            ),
            horizontalSpaceSmall,
            MyIconButton(
              title: "Print",
              leftIcon: Icons.print,
              backgroundColor: kcLastLogin1,
              onTap: () {},
            ),
            horizontalSpaceSmall,
          ],
        ),
      ),
    );
  }
}
