import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/createAndWrite/sub_tabs/asset_screen/widgets/asset_form.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:stacked/stacked.dart';
import 'asset_screen_viewmodel.dart';

class AssetScreenView extends StackedView<AssetScreenViewModel> {
  final AssetPages pageType;
  const AssetScreenView({
    Key? key,
    required this.pageType,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AssetScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: MyAppBar(title: pageType.name),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            AssetForm(
              title: "${pageType.name} Form Templates",
              image: assetTemplate,
              onPress: () {
                // ignore: unrelated_type_equality_checks
                pageType == AssetPages.Meatings
                    ? viewModel.navigateToMeetingView()
                    : viewModel.navigateToAssetFormTemplatesView(
                        false, pageType);
              },
            ),
            verticalSpaceMedium,
            AssetForm(
              title: "${pageType.name} Forms Library",
              image: assetLibrary,
              onPress: () {
                viewModel.navigateToAssetFormTemplatesView(true, pageType);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  AssetScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AssetScreenViewModel();
}
