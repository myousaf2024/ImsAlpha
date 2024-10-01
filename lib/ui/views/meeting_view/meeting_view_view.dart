import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../gen/assets.gen.dart';
import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/app_bar/appbar.dart';
import '../../widgets/common/responsive_gridview.dart';
import 'meeting_view_viewmodel.dart';

class MeetingViewView extends StackedView<MeetingViewViewModel> {
  const MeetingViewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MeetingViewViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const MyAppBar(title: "Meetings"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveGridView(
              itemCount: viewModel.itemsList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    viewModel.functionsList[index]();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: kcPrimaryColor, width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          (viewModel.itemsList[index]["icon"] as AssetGenImage)
                              .path,
                          height: screenWidth(context) / 6,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          viewModel.itemsList[index]["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getResponsiveMediumFontSize(context)),
                        ),
                      ],
                    ),
                  ),
                );
              },
              crossAxisCount: 2,
              spacing: 25.0,
              aspectRatio: 1.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  MeetingViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MeetingViewViewModel();
}
