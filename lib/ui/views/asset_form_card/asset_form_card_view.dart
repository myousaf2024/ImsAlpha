import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/asset_form_card/widgets/export_buttons.dart';
import 'package:lms_alpha/ui/views/asset_form_card/widgets/listview.dart';
import 'package:lms_alpha/ui/views/asset_form_card/widgets/search.dart';
import 'package:lms_alpha/ui/views/asset_form_card/widgets/status.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:stacked/stacked.dart';

import 'asset_form_card_viewmodel.dart';

class AssetFormCardView extends StackedView<AssetFormCardViewModel> {
  final AssetPages pageType;
  final bool islib;

  const AssetFormCardView({
    Key? key,
    required this.islib,
    required this.pageType,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AssetFormCardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: MyAppBar(title: pageType.name),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AssetFormCardViewSearch(),
              verticalSpaceSmall,
              if (islib) ...[
                const AssetFormCardViewStatus(),
                verticalSpaceSmall,
              ],
              AssetFormCardViewExportsButtons(
                islib: islib,
              ),
              verticalSpaceSmall,
              AssetFormCardViewListView(
                islib: islib,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  AssetFormCardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AssetFormCardViewModel(pageType);
}
