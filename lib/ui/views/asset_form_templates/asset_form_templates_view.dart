import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'asset_form_templates_viewmodel.dart';
import 'widgets/asset_card.dart';
import 'widgets/filter_bar.dart';

class AssetFormTemplatesView extends StackedView<AssetFormTemplatesViewModel> {
  final AssetPages pageType;
  final String subtype;
  final bool islib;

  const AssetFormTemplatesView(
      {Key? key,
      required this.pageType,
      required this.islib,
      required this.subtype})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AssetFormTemplatesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: islib
          ? MyAppBar(title: "${pageType.name} Form Library")
          : MyAppBar(title: "${pageType.name} Form Templates"),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subtype,
              style: const TextStyle(
                  color: kcPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            verticalSpaceMedium,
            const AssetFormTemplatesViewFilterBar(),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 30.0,
                ),
                itemCount: viewModel.assets.length,
                itemBuilder: (context, index) {
                  final asset = viewModel.assets[index];
                  return InkWell(
                    onTap: () {
                      viewModel.navigateToAssetTemplate(index, islib, pageType);
                    },
                    child: AssetFormCard(
                      name: pageType.name == "Meetings"
                          ? subtype
                          : asset['name']!,
                      imagePath: asset['image']!,
                      pageType: pageType,
                      subName: asset['subName']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AssetFormTemplatesViewModel viewModelBuilder(BuildContext context) =>
      AssetFormTemplatesViewModel();
}
